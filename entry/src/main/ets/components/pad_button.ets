@Component
struct PadButton{
    @Prop label: string;
    @Prop weight: number = 1;

    build() {
        Button(){
            Text(this.label).fontColor("#fff").fontWeight(FontWeight.Bold).fontSize(16)
        }.flexGrow(this.weight).height(50)
    }
}

export default PadButton