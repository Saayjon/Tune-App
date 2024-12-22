import SwiftUI

struct MainView: View {
    @Binding var isLoggedIn: Bool
    @State private var songName: String = ""
    //@State private var showProfileView: Bool = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Welcome to Tune")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text("Share Your Song of the Day!")
                    .font(.headline)

                TextField("Enter Song Name", text: $songName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button(action: shareSong) {
                    Text("Share Song")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)

                Spacer()

                HStack {
                    Spacer()
                    NavigationLink(value: "profile") {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.blue)
                            .shadow(radius: 5)
                    }
                    .navigationDestination(for: String.self) { value in
                        if value == "profile" {
                            ProfileView(isLoggedIn: $isLoggedIn)
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
    }

    func shareSong() {
        print("Shared song: \(songName)")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(isLoggedIn: .constant(true))
    }
}
