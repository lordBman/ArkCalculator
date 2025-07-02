@Component
struct Display{
    @Prop data: string[] = []

    build() {
        Text("screen")
    }
}

export default Display