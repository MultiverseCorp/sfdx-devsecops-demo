/**
 * Generic unit tests for geocoding service
 * @author Lorenzo
 * @version 1.0
 */

 @isTest
 private with sharing class GeocodingServiceTest {
     private static final String STREET = 'Camino del Jueves 26';
     private static final String CITY = 'Armilla';
     private static final String POSTAL_CODE = '18100';
     private static final String STATE = 'Granada';
     private static final String COUNTRY = 'Spain';
     private static final Decimal LATITUDE = 3.123;
     private static final Decimal LONGITUDE = 31.333;
     private static final Decimal CONTINENT = '31.333';
 
     @isTest
     static void successResponse() {
         // GIVEN
         GeocodingService.GeocodingAddress address = new GeocodingService.GeocodingAddress();
         address.street = STREET;
         address.city = CITY;
         address.postalcode = POSTAL_CODE;
         address.state = STATE;
         address.country = COUNTRY;
 
         Test.setMock(
             HttpCalloutMock.class,
             new OpenStreetMapHttpCalloutMockImpl()
         );
 
         // WHEN
         List<GeocodingService.Coordinates> computedCoordinates = GeocodingService.geocodeAddresses(
             new List<GeocodingService.GeocodingAddress>{ address }
         );
 
         // THEN
         Assert.areEqual(1, computedCoordinates.size(), 'Asserts that the number of coordinates is equal to 1.');
         Assert.areEqual(LATITUDE, computedCoordinates[0].lat, 'Assert that the latitude and longitude are equal.');
         Assert.areEqual(LONGITUDE, computedCoordinates[0].lon, 'Asserts that the longitude of the first coordinate is equal to the longitude of the first coordinate.');
     }
     @isTest
     static void blankAddress() {
         // GIVEN
         GeocodingService.GeocodingAddress address = new GeocodingService.GeocodingAddress();
 
         Test.setMock(
             HttpCalloutMock.class,
             new OpenStreetMapHttpCalloutMockImpl()
         );
 
         // WHEN
         List<GeocodingService.Coordinates> computedCoordinates = GeocodingService.geocodeAddresses(
             new List<GeocodingService.GeocodingAddress>{ address }
         );
 
         // THEN
         Assert.areEqual(1, computedCoordinates.size(), 'Asserts that the number of coordinates is equal to 1.');
         Assert.isNull(computedCoordinates[0].lat, 'Assert that the first coordinate is null.');
         Assert.isNull(computedCoordinates[0].lon, 'Assert that the first coordinate is null.');
     }
     @isTest
     static void errorResponse() {
         // GIVEN
         GeocodingService.GeocodingAddress address = new GeocodingService.GeocodingAddress();
         address.street = STREET;
         address.city = CITY;
         address.postalcode = POSTAL_CODE;
         address.state = STATE;
         address.country = COUNTRY;
 
         Test.setMock(
             HttpCalloutMock.class,
             new OpenStreetMapHttpCalloutMockImplError()
         );
 
         // WHEN
         List<GeocodingService.Coordinates> computedCoordinates = GeocodingService.geocodeAddresses(
             new List<GeocodingService.GeocodingAddress>{ address }
         );
 
         // THEN
         Assert.areEqual(1, computedCoordinates.size(), 'Asserts that the number of coordinates is equal to 1.');
         Assert.isNull(computedCoordinates[0].lat, 'Assert that the first coordinate is null.');
         Assert.isNull(computedCoordinates[0].lon, 'Assert that the first coordinate is null.');
     }
 
     public class OpenStreetMapHttpCalloutMockImpl implements HttpCalloutMock {
         public HTTPResponse respond(HTTPRequest req) {
             HttpResponse res = new HttpResponse();
             res.setHeader('Content-Type', 'application/json');
             res.setBody('[{"lat": ' + LATITUDE + ',"lon": ' + LONGITUDE + '}]');
             res.setStatusCode(200);
             return res;
         }
     }
 
     public class OpenStreetMapHttpCalloutMockImplError implements HttpCalloutMock {
         public HTTPResponse respond(HTTPRequest req) {
             HttpResponse res = new HttpResponse();
             res.setHeader('Content-Type', 'application/json');
             res.setStatusCode(400);
             return res;
         }
     }
 }
