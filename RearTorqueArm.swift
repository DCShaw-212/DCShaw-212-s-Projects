//
//  RearTorqueArm.swift
//  CDL_Pretrip_Flashcards
//
//  Created by Dustin Shaw on 8/28/22.
//

import SwiftUI

struct RearTorqueArm: View {
    
    private let colors: [Color] = [.gray, .white]
    private var question : String =  "Items To be Checked: \n Torque Arm"
    private var answer : String = "Securely attached. \n No cracks or breaks. \n Bushings are not dry-rotted or cracked."
    
    var body: some View {
        
        
        VStack{
            TabView{
                ForEach(colors, id: \.self) { color in
                    ZStack{
                        color.ignoresSafeArea()
                        
                        VStack{
                           
                        Text("Torque Arm")
                            .padding()
                            .background(.orange)
                            .font(.title2)
                            .foregroundColor(.black)
                           
                            Image("torqueArm").resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 200, alignment: .center)
                            
                            if (color.description == "gray")
                            {
                                
                                Text("\(question)")
                                    .padding()
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .background(.white)
                                Spacer()
                            }
                            else{
                                Text("Description:")
                                    .padding()
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .background(.black)
                                Text("\(answer)")
                                    .padding()
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .background(.black)
                                Spacer()
                            }
                            
                            NavigationLink(destination:RearBrakeHose()){
                                        Text("Next")
                                            .padding()
                                            .font(.title)
                                            .background(.orange)
                                            .foregroundColor(.black)
                                            .cornerRadius(60)
                                    }
                        
                            Spacer()
                        }
                    }
                    .ignoresSafeArea()
                    
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        }
    }
}

struct RearTorqueArm_Previews: PreviewProvider {
    static var previews: some View {
        RearTorqueArm()
    }
}