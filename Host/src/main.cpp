#include <stdio.h>
#include <iostream>
#include "lusb0_usb.h"
#include <stdint.h>
#include <fstream>
#include <time.h>

using namespace std;

// Device vendor and product id.
#define MY_VID 0x1366
#define MY_PID 0x0101

// Device configuration and interface id.
#define MY_CONFIG 1
#define MY_INTF 0

// Device endpoint(s)
#define EP_IN  0x81
#define EP_OUT 0x01
//#define EP_IN1 0x82
//#define EP_OUT1 0x02

#define BUF_SIZE 2
/* Buffer to receive incoming messages */
static char receiveBuffer[BUF_SIZE];

static char receive_Buffer[BUF_SIZE * 260];

union inti {
	char usb_data[2];
	int16_t number;
};

union inti iint;

union intarr {
	char usb_data[4][10];
	uint16_t arr[10];
};

union intarri {
	char usb_data[2 * 257];
	uint16_t arr[257];
};

union intarr arri;

/* Indicates whether a write (OUT transaction) is currently pending */
static bool pendingWrite = false;

/* Read and write contexts used by libusb */
void *async_read_context = NULL;
//void *async_read_context_arr = NULL;
void *async_write_context = NULL;
//void *async_write_context_arr = NULL;

/**********************************************************
* Opens a device with the configured PID/VID.
* Returns a device handle or NULL if no matching device
* was found.
**********************************************************/
usb_dev_handle *open_dev(void)
{
	struct usb_bus *bus;
	struct usb_device *dev;

	for (bus = usb_get_busses(); bus; bus = bus->next)
	{
		printf("USB Bus: %s\n", bus->dirname);
		for (dev = bus->devices; dev; dev = dev->next)
		{
			printf("USB Device: 0x%.4x:0x%.4x\n", dev->descriptor.idVendor, dev->descriptor.idProduct);
			if (dev->descriptor.idVendor == MY_VID
				&& dev->descriptor.idProduct == MY_PID)
			{
				printf("Device found\n");
				return usb_open(dev);
			}
		}
	}
	return NULL;
}


int main(void)
{
	usb_dev_handle *dev = NULL; /* the device handle */
	int ret;
	//int transfer_size;


	/* Initialize the library */
	usb_init();

	/* Find all busses */
	ret = usb_find_busses();

	/* Find all connected devices */
	usb_find_devices();

	/* Open device */
	if (!(dev = open_dev()))
	{
		printf("Error opening device: %s\n", usb_strerror());
		return 0;
	}
	else
	{
		printf("Opened device %.4x:%.4x opened\n", MY_VID, MY_PID);
	}

	/* Set configuration. This is needed before claiming an interface. */
	if (usb_set_configuration(dev, MY_CONFIG) < 0)
	{
		printf("Error setting configuration #%d: %s\n", MY_CONFIG, usb_strerror());
		usb_close(dev);
		return 0;
	}
	else
	{
		printf("Set configuration #%d\n", MY_CONFIG);
	}

	/* Claim interface. This is needed before communicating. */
	if (usb_claim_interface(dev, 0) < 0)
	{
		printf("Error claiming interface #%d:%s\n", MY_INTF, usb_strerror());
		usb_close(dev);
		return 0;
	}
	else
	{
		printf("Claimed interface #%d\n", MY_INTF);
	}
	union inti iint;
	/* Set up the write (OUT) transfer */
	ret = usb_bulk_setup_async(dev, &async_write_context, NULL);
	if (ret < 0)
	{
		printf("Error setting up write transfer: %s\n", usb_strerror());
		return 0;
	}

	/*ret = usb_bulk_setup_async(dev, &async_write_context_arr, NULL);
	if (ret < 0)
	{
	printf("Error setting up write transfer: %s\n", usb_strerror());
	return 0;
	}*/

	/* Set up the read (IN) transfer */
	ret = usb_bulk_setup_async(dev, &async_read_context, EP_IN);
	if (ret < 0)
	{
		printf("Error setting up read transfer: %s\n", usb_strerror());
		return 0;
	}

	ret = usb_submit_async(async_read_context, receive_Buffer, sizeof(receive_Buffer));
	if (ret < 0)
	{
		printf("Error submitting read: %s\n", usb_strerror());
	}

	//else printf("check");
	char buffer[2];
	char buffer1[4];
	//iint.number = 2;
	printf("%d \n", sizeof(union inti));
	//usb_bulk_read(dev, EP_IN, receiveBuffer, BUF_SIZE, 1000);

	/*for (int j = 0; j < 9; j++) {
	scanf_s("%d ", arri.arr[j]);
	}
	scanf_s("%d\n", arri.arr[9]);*/
	for (int j = 0; j < 10; j++) {
		arri.arr[j] = j;
	}

	for (int j = 0; j < 10; j++) {
		printf("%d \n", arri.arr[j]);
	}
	int arra[128];
	ofstream myfile;
	myfile.open("array.txt");
	int32_t array1[260];
	int16_t bridgefreq = 21, dac_values[256];
	for (int j = 0; j < 256; j++) dac_values[j] = 100 + j;
	printf("print dac_values[255] %d \n", dac_values[255]);
	union intarri sendarray;
	sendarray.arr[0] = bridgefreq;
	for (int i = 1; i < 257; i++) {
		sendarray.arr[i] = dac_values[i - 1];
	}

	time_t mytime;
	mytime = time(NULL);
	printf(ctime(&mytime));

	int f = 0;
	while (1) {
		printf("arxh \n");
		//scanf_s("%d", &iint.number);
		//printf("print 1 %d \n", iint.number);
		usb_bulk_write(dev, EP_OUT, sendarray.usb_data, sizeof(sendarray), 1000);
		//usb_bulk_write(dev, EP_OUT, iint.usb_data, sizeof(union inti), 100);
		//ret = usb_bulk_setup_async(dev, *buffer ,EP_OUT);
		//ret = usb_submit_async(async_write_context, iint.usb_data, sizeof(union inti));
		//if (ret < 0) { for(int i=0; i<5 ;i++) printf("errorW \n"); }
		//ret = usb_bulk_read(dev, EP_IN, iint.usb_data, sizeof(union inti), 100000000);
		//if (ret < 0) { for (int i = 0; i<5 ; i++) printf("errorR \n"); }

		//ret = usb_reap_async_nocancel(async_read_context, 0);
		/*ret = usb_submit_async(async_read_context, iint.usb_data, sizeof(union inti));
		if (ret < 0)
		{
		printf("Error submitting read: %s\n", usb_strerror());
		}*/
		/*while(usb_bulk_read(dev, EP_IN, receiveBuffer, BUF_SIZE, 2000)<0);
		iint.number = *((int*)receiveBuffer);
		printf("print 2 %d \n", iint.number);
		while(usb_bulk_read(dev, EP_IN, receiveBuffer, BUF_SIZE, 2000)<0);
		iint.number = *((int*)receiveBuffer);
		printf("print 3 %d \n", iint.number);*/
		//usb_bulk_write(dev, EP_OUT, arri.usb_data[10], sizeof(union intarr), 1000);
		//usb_bulk_read(dev, EP_IN, receive_Buffer, sizeof(receive_Buffer), 10000);
		//cout << "ok" << endl;
		//usb_submit_async(async_read_context, receive_Buffer, sizeof(receive_Buffer));
		//cout << "ok" << endl;
		//while(usb_reap_async_nocancel(async_read_context, 0)<0);
		//free(receive_Buffer);
		usb_bulk_setup_async(dev, &async_read_context, EP_IN);
		usb_submit_async(async_read_context, receive_Buffer, sizeof(receive_Buffer));
		usb_reap_async_nocancel(async_read_context, 0);
		//usb_submit_async(async_read_context, receive_Buffer, sizeof(receive_Buffer));
		//cout << "ok" << endl;

		/*
		for (int j = 0; j < 520; j++) {
			printf("%d %d\n",j, receive_Buffer[j]);
		}*/


		int k = 0;
		for (int j = 0; j < 520; j = j + 2) {
			//for (int k = 0; k < 1; k++) {
			//buffer[k] = receive_Buffer[j * 2 + k];
			//printf("%d \n", buffer[k]);
			//}
			//buffer[2] = '0';
			//buffer[3] = '0';
			//printf("\n");
			/*for (int k = 0; k < 4; k++) {
			buffer1[k] = buffer[3 - k];
			//printf("%d \n", buffer1[k]);
			}*/
			//printf("\n");
			//arri.arr[j] = *((int*)buffer);
			buffer[0] = receive_Buffer[j];
			buffer[1] = receive_Buffer[j + 1];
			array1[k] = *((int16_t*)buffer);
			k++;
			/*for (int k = 0; k < 1; k++) {
			buffer[k] = receive_Buffer[j * 2 + k + 2];
			//printf("%d \n", buffer[k]);
			}
			arri.arr[(j/2)+1] = *((int*)buffer);*/
			//printf("print 3 %d \n", arri.arr[j]);
			//fprintf(f, "%3d", arri.arr[j]);
		}
		mytime = time(NULL);
		myfile << ctime(&mytime);
		for (int j = 0; j < 260; j++) {
			//printf("%d %d \n", j, arri.arr[j]);
			//array1[j] = arri.arr[j];
			printf("%d %d \n", j, array1[j]);
			//cout << array1[j] << endl;
			myfile << array1[j] << endl;
		}

		/*usb_submit_async(async_read_context, receive_Buffer, sizeof(receive_Buffer));
		while (usb_reap_async_nocancel(async_read_context, 0)<0);
		for (int j = 0; j < 256; j++) {
		for (int k = 0; k < 4; k++) {
		buffer[k] = receive_Buffer[j * 4 + k];
		}
		arri.arr[j] = *((int*)buffer);
		}
		for (int j = 0; j < 256; j++) {
		printf("%d \n", arri.arr[j]);
		array2[j] = arri.arr[j];
		myfile << array2[j] << " " << array1[j]<< endl;
		}*/
		/*for (int i = 0; i < 5; i++) {
		while (usb_bulk_read(dev, EP_IN, receiveBuffer, BUF_SIZE, 2000)<0);
		arra[i]= *((int*)receiveBuffer);
		printf("print %d %d \n", i,arra[i]);
		//fprintf(f, "%d\n", arra[i]);
		}*/
		
		f = 1;
	};
	/* Free resources */
	myfile.close();
	usb_free_async(&async_read_context);
	usb_free_async(&async_write_context);
	usb_release_interface(dev, 0);

	/* Close connection */
	if (dev)
	{
		usb_close(dev);
	}

	printf("Done.\n");

	return 0;
}
