import SwiftUI
import UIKit // Import UIKit for URL handling

struct ContentView: View {
    var body: some View {
        VStack {
            // Top section
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color(.systemGray6)) // Light gray for light mode, dark gray for dark mode
                        .cornerRadius(15)
                        .frame(width: 380, height: 150)
                        .padding(.top, 0)

                    // Profile Image
                    Spacer()
                    Circle()
                        .fill(Color.black)
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                        .offset(y: 70)

                    Text("💂🏽‍♀️")
                        .font(.system(size: 90))
                        .offset(y: 67)
                }
                .offset(y: -220)

                Text("@benito.priyasha")
                    .font(.caption)
                    .foregroundColor(.primary) // Use primary color
                    .offset(y: -170)

                Text("Benito Priyasha")
                    .font(.headline)
                    .offset(y: -165)

                HStack {
                    Text("Surabaya, Indonesia")
                        .font(.caption)
                        .foregroundColor(.blue)
                    Text("|")
                        .foregroundColor(.secondary) // Use secondary color
                    Text("Joined on 9 December 2024")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .offset(y: -160)

                // Follow Button
                HStack {
                    Button(action: {
                        if let url = URL(string: "https://www.instagram.com/benito.priyasha/") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.blue)
                                .frame(height: 40)
                                .shadow(radius: 5)

                            HStack {
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("Follow")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                            .padding(7)
                        }
                    }

                    // Message Button
                    Button(action: {
                        // Message action
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.green)
                                .frame(height: 40)
                                .shadow(radius: 5)

                            HStack {
                                Image(systemName: "message")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("Message")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                            .padding(7)
                        }
                    }

                    // More Button
                    Button(action: {
                        if let url = URL(string: "https://www.linkedin.com/in/benito-priyasha-5aab16304/") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        HStack {
                            Image(systemName: "ellipsis")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("More")
                                .font(.caption)
                                .foregroundColor(.primary) // Use primary color
                        }
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 0.5)
                                .shadow(radius: 10)
                        )
                    }
                }
                .offset(y: -155)

                Text("Under Graduate Information System for Business at Universitas Ciputra")
                    .font(.caption)
                    .offset(y: -145)
                    .frame(width: 250, height: 50)
                    .multilineTextAlignment(.center)
            }
            .padding(35)
            .offset(y: 180)

            // Middle section
            Form {
                Section {
                    Text("Information").font(.title3).fontWeight(.bold)
                    HStack {
                        Image(systemName: "globe")
                        Text("Website").foregroundColor(.gray)

                        Spacer()
                             Text("musolo.com")
                         }
                         .font(.system(size: 15))

                         HStack {
                             Image(systemName: "envelope")
                             Text("Email").foregroundColor(.gray)
                             Spacer()
                             Text("benito.amadeo54@gmail.com")
                         }
                         .font(.system(size: 15))

                         HStack {
                             Image(systemName: "phone")
                             Text("Phone").foregroundColor(.gray)
                             Spacer()
                             Text("+62 82141004846")
                         }
                         .font(.system(size: 15))

                         HStack {
                             Image(systemName: "calendar")
                             Text("Birthday").foregroundColor(.gray)
                             Spacer()
                             Text("5 May 2004")
                         }
                         .font(.system(size: 15))
                     }
                 }

                 // Bottom section
                 VStack {
                     HStack {
                         Button(action: {
                             // Action for UI Designer
                         }) {
                             HStack {
                                 Text("UI Designer")
                                     .font(.caption)
                             }
                             .padding(10)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 5)
                                     .stroke(Color.black, lineWidth: 0.5)
                                     .shadow(radius: 10)
                                     .background(Color.gray.opacity(0.2)) // Light background for buttons
                                     .cornerRadius(5)
                             )
                         }

                         Button(action: {
                             // Action for UX Designer
                         }) {
                             HStack {
                                 Text("UX Designer")
                                     .font(.caption)
                             }
                             .padding(10)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 5)
                                     .stroke(Color.black, lineWidth: 0.5)
                                     .shadow(radius: 10)
                                     .background(Color.gray.opacity(0.2)) // Light background for buttons
                                     .cornerRadius(5)
                             )
                         }

                         Button(action: {
                             // Action for Design System
                         }) {
                             HStack {
                                 Text("Design System")
                                     .font(.caption)
                             }
                             .padding(10)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 5)
                                     .stroke(Color.black, lineWidth: 0.5)
                                     .shadow(radius: 10)
                                     .background(Color.gray.opacity(0.2)) // Light background for buttons
                                     .cornerRadius(5)
                             )
                         }

                         Spacer()
                     }
                     .foregroundColor(.black)
                     .font(.caption)

                     HStack {
                         Button(action: {
                             // Action for Product
                         }) {
                             HStack {
                                 Text("Product")
                                     .font(.caption)
                             }
                             .padding(10)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 5)
                                     .stroke(Color.black, lineWidth: 0.5)
                                     .shadow(radius: 10)
                                     .background(Color.gray.opacity(0.2)) // Light background for buttons
                                     .cornerRadius(5)
                             )
                         }

                         Button(action: {
                             // Action for Successful
                         }) {
                             HStack {
                                 Text("Successful")
                                     .font(.caption)
                             }
                             .padding(10)
                             .overlay(
                                 RoundedRectangle(cornerRadius: 5)
                                     .stroke(Color.black, lineWidth: 0.5)
                                     .shadow(radius: 10)
                                     .background(Color.gray.opacity(0.2)) // Light background for buttons
                                     .cornerRadius(5)
                             )
                         }
                         Spacer()
                     }
                     .foregroundColor(.black)
                     .font(.caption)
                 }
                 .padding(10)
             }
             .background(Color(.systemBackground)) // Set background to adapt to light/dark mode
         }
     }

     #Preview {
         ContentView()
     }
