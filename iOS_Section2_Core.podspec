Pod::Spec.new do |spec|

  spec.name          = "iOS_Section2_Core"
  spec.version       = "0.0.1"
  spec.summary       = "巨匠課程第二階"
  spec.description   = <<-DESC
  此為課程範例函式庫，目的在於快速集成資源檔案，而對於學員因為沒有參與到線上課程，也可避免事後補課時查找素材檔案的麻煩。
                   DESC
  spec.homepage      = "https://github.com/jeff-gjun/ios_section2_core"
  spec.license       = "MIT"
  spec.author        = "Jeff Chiu"
  spec.platform      = :ios, "10.0"
  spec.swift_version = "5.0"
  spec.source        = { :git => "https://github.com/jeff-gjun/ios_section2_core.git", :tag => "#{spec.version}" }
  spec.source_files  = "iOS-Section2-Core/SourceCode/**/*.{swift}"

end
