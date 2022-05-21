//
//  ImagesView.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/19/22.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                YoutubeView(youtubeID: "leGCnjdlgmo")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)

                Text("The following code snippet will bring in an image that is in your `Assets` folder in Xcode. The asset must be named `nasaImage` in this case.")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)

                Text("Images will take up whatever space is necessary to match the image size which means it may go off the edge of the devices screen.")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
                
                Text("To tame the image to a size that you can adjust, use the `.resizable()` modifier. When you do this, the image will take up as must space as it can get in width and height. Note that the aspect ratio of the image will not be respected so the image may look distorted.")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
                     
                Text("To ensure the aspect ratio remains consist with the original image aspect ratio, use the `.scaletoFit()` modifier.")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
                
                Text("And finally, to size the image the way you like, set the `.frame(width:` modifier to the width you want, the height will take care of itself.")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
            }
            .padding(10.0)
            Spacer()
        }.navigationBarTitle("Images")
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
