using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.GoogleMaps;


namespace App1
{
    [DesignTimeVisible(false)]
    public partial class MainPage : ContentPage
    {

        private Position currentLocation;
        private bool isTracking = false;
        public MainPage()
        {
            InitializeComponent();
            //GeneratePins();

            map.MyLocationEnabled = true;
            map.UiSettings.MyLocationButtonEnabled = true;
            startStopButton.TranslationY = -295;
            entry.TranslationY = -340;
            entry.IsEnabled = false;
            startStopButton.Clicked += async (sender, e) =>
            {
                if (!isTracking)
                {
                    isTracking = true;
                    startStopButton.Text = "Parar seguimiento";
                    startStopButton.BackgroundColor = Color.GreenYellow;
                    
                    await StartTrackingLocation();
                }
                else
                {
                    isTracking = false;
                    startStopButton.Text = "Iniciar seguimiento";
                    startStopButton.BackgroundColor = Color.MediumVioletRed;
                }
            };



            InitializeMap();


        }

        /*
        private void GeneratePins()
        {

            var pins = new List<Pin>
            {
                new Pin { Type = PinType.Place, Label = "Esta es mi casa", Address = "Estoy aquí", Position = new Position(-23.68, -46.87) }
            };

            foreach (var pin in pins)
            {
                // Podemos usar FromBundle, FromStream o FromView (custom view)
                //pin.Icon = BitmapDescriptorFactory.FromBundle("coffee_pin.png");
                map.Pins.Add(pin);
               
            }
        }
        */
        private async void InitializeMap()
        {
            var location= await Geolocation.GetLocationAsync();

            if (location != null)
            {
                map.MoveToRegion(MapSpan.FromCenterAndRadius(new Position(location.Latitude, location.Longitude), Distance.FromMiles(1)));
                var pin = new Pin
                {
                    Type = PinType.Place,
                    Position = new Position(location.Latitude, location.Longitude),
                    Label = "Mi Ubicación",
                    Address = "Estoy aquí"
                };
                map.Pins.Add(pin);
            }

            entry.Text = "Latitud: " + location.Latitude+ " \n" + "Longitud: " + location.Longitude;
            entry.BackgroundColor = Color.Aqua;

        }

        private async void OnShowLocationButtonClicked(object sender, EventArgs e)
        {
            var location = await Geolocation.GetLocationAsync();

            if (location != null)
            {
                map.MoveToRegion(MapSpan.FromCenterAndRadius(new Position(location.Latitude, location.Longitude), Distance.FromMiles(1)));
                var pin = new Pin
                {
                    Type = PinType.Place,
                    Position = new Position(location.Latitude, location.Longitude),
                    Label = "Mi Ubicación",
                    Address = "Estoy aquí"
                };
                map.Pins.Add(pin);
            }
        }

        private async Task StartTrackingLocation()
        {
            while (isTracking)
            {
                var location = await Geolocation.GetLocationAsync(new GeolocationRequest(GeolocationAccuracy.High));

                if (location != null)
                {
                    currentLocation = new Position(location.Latitude, location.Longitude);

                    Device.BeginInvokeOnMainThread(() =>
                    {
                        // Mueve el mapa a la ubicacion donde nos encontremos
                        map.MoveToRegion(MapSpan.FromCenterAndRadius(currentLocation, Distance.FromMiles(0.1)));

                        
                        map.Pins.Clear();
                        map.Pins.Add(new Pin
                        {
                            Type = PinType.Place,
                            Position = currentLocation,
                            Label = "Ubicacion Actual"
                        });
                    });

                    entry.Text = "Latitud: " + location.Latitude + " \n" + "Longitud: " + location.Longitude;
                }

                await Task.Delay(5000); // 5 segundos para que se actualice la ubicacion.
            }
        }
    }
}
