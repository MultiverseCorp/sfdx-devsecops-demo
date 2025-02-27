public class ApexCdpQueryUsageExample {

    public static void positive(List<Line_Item__c> items) {
        ConnectApi.CdpQueryInput input new CdpQueryInput();
        CdpQuery.queryANSISql(input);
	}


    public static void negative(List<Line_Item__c> items) {
        CdpQueryMetadataOutput output = CdpQuery.getAllMetadata();
	}
}
