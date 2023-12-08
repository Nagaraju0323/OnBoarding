import SwiftUI

struct PulsatingCirclesView: View {
    @State private var isPulsating1 = false
    @State private var isPulsating2 = false
    @State private var isPulsating3 = false
    
    var body: some View {
        ZStack {
            
            Circle()
                .stroke(Color.green.opacity(0.2), lineWidth: 20)
                .frame(width: 180, height: 180, alignment: .center)
                .scaleEffect(isPulsating1 ? 1.5 : 1.0)
                .onAppear() {
                    withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                        self.isPulsating1.toggle()
                    }
                }

            Circle()
                .stroke(Color.green.opacity(0.2), lineWidth: 40)
                .frame(width: 180, height: 180, alignment: .center)
                .scaleEffect(isPulsating2 ? 1.5 : 1.0)
                .onAppear() {
                    withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                        self.isPulsating2.toggle()
                    }
                }
            
            Circle()
                .stroke(Color.green.opacity(0.2), lineWidth: 80)
                .frame(width: 180, height: 180, alignment: .center)
                .scaleEffect(isPulsating3 ? 1.5 : 1.0)
                .onAppear() {
                    withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                        self.isPulsating3.toggle()
                    }
                }
            
        }
    }
}

struct PulsatingCirclesView_Previews: PreviewProvider {
    static var previews: some View {
        PulsatingCirclesView()
    }
}
