import PadButton from './pad_button'

@Component
struct Pad{
    build() {
        Column({ space: "8" }){
            Row({ space: "8" }){
                Column().flexGrow(3)
                PadButton({ label: "\u23fb"})
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
            Row({ space: "8" }){
                PadButton({ label: "7" })
                PadButton({ label: "8" })
                PadButton({ label: "9" })
                PadButton({ label: "*" })
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
            Row({ space: "8" }){
                PadButton({ label: "4" })
                PadButton({ label: "5" })
                PadButton({ label: "6" })
                PadButton({ label: "/" })
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
            Row({ space: "8" }){
                PadButton({ label: "1" })
                PadButton({ label: "2" })
                PadButton({ label: "3" })
                PadButton({ label: "-" })
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
            Row({ space: "8" }){
                PadButton({ label: "." })
                PadButton({ label: "=", weight: 2 })
                PadButton({ label: "+" })
            }.width("100%").justifyContent(FlexAlign.SpaceEvenly)
        }
    }
}

export default Pad