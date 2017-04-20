
Pod::Spec.new do |s|
s.name         = "YHCategory"
s.version      = "0.0.2"
s.summary      = "Ease to coding"
s.homepage     = "https://github.com/Hidebush/YHCategory"
s.license      = "MIT"
s.author       = { "yuehuig" => "g_yhui@163.com" }
s.platform     = :ios, "7.0"
s.source       = { :git => "https://github.com/Hidebush/YHCategory.git", :tag => s.version }
s.source_files  = "YHCategory", "YHCategoryDemo/YHCategory/*.{h,m}"
s.requires_arc = true
end
