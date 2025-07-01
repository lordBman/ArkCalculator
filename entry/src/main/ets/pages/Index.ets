import Pad from '../components/pad';
import Display from '../components/display';

@Entry
@Component
struct Index {
    @State message: string = 'Hello World';

    build() {
        Column() {
            Display().flexGrow(1)
            Pad()
        }.height("100%")
    }
}