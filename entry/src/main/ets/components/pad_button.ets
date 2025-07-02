import resourceManager from "@ohos.resourceManager";

@Component
struct PadButton{
    @Prop label: string;
    @Prop weight: number = 1;
    @Prop color: ResourceColor = resourceManager.getSystemResourceManager().getColor(Response)
    @Require onClicked : (symbol: string)=> void

    build() {
        Button(){
            Text(this.label).fontColor("#fff").fontWeight(FontWeight.Lighter).fontSize(20)
        }.flexGrow(this.weight).height(50).backgroundColor(this.color).onClick((event)=> this.onClicked(this.label))
    }
}

export default PadButton