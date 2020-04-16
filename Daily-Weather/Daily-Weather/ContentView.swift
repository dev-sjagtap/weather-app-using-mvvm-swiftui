
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            TextField("Enter City Name", text: $weatherVM.cityName) {
                self.weatherVM.search()
            }.font(.custom("Arial", size: 50))
                .padding()
                .fixedSize()
            
            Text(weatherVM.temperature)
                .font(.custom("Aerial", size: 100))
                .foregroundColor(.white)
                .offset(y: 100)
                .padding()
          
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
