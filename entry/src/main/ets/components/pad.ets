import PadButton from './pad_button'

@Component
struct Pad{
    @Prop onClicked? : (symbol: string)=> void = undefined
    @Prop onCommand? : (symbol: string)=> void = undefined
    @Prop onModify? : (symbol: string)=> void = undefined

    //this?.onClicked(symbol)

    build() {
        Column({ space: "8" }){
            Row({ space: "8" }){
                Column().flexGrow(3)
                PadButton({ label: "\u23fb", onClicked: this.onCommand})
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
            Row({ space: "8" }){
                PadButton({ label: "7", onClicked: this.onClicked })
                PadButton({ label: "8", onClicked: this.onClicked })
                PadButton({ label: "9", onClicked: this.onClicked })
                PadButton({ label: "*", onClicked: this.onModify })
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
            Row({ space: "8" }){
                PadButton({ label: "4", onClicked: this.onClicked })
                PadButton({ label: "5", onClicked: this.onClicked })
                PadButton({ label: "6", onClicked: this.onClicked })
                PadButton({ label: "/", onClicked: (symbol) => this.onModify })
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
            Row({ space: "8" }){
                PadButton({ label: "1", onClicked: this.onClicked })
                PadButton({ label: "2", onClicked: this.onClicked })
                PadButton({ label: "3", onClicked: this.onClicked })
                PadButton({ label: "-", onClicked: this.onModify })
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
            Row({ space: "8" }){
                PadButton({ label: ".", onClicked: this.onClicked })
                PadButton({ label: "=", weight: 2, color: Color.Grey, onClicked: this.onCommand })
                PadButton({ label: "+", onClicked: this.onModify })
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
        }.padding(8).borderRadius(20).backgroundColor("#e4e5e9f5").margin(8)
    }
}

export default Pad