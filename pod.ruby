platform :ios, '15.0'
use_frameworks!

target 'DatingApp' do
  pod 'Firebase/Firestore'      # Firebase Firestore for database
  pod 'Firebase/Auth'           # Firebase Authentication
  pod 'Firebase/Storage'        # Firebase Storage for user images
  pod 'Kingfisher'              # For image caching
end
