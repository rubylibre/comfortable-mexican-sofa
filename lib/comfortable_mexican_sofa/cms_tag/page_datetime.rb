class CmsTag::PageDateTime < CmsBlock
  
  include CmsTag
  
  def self.regex_tag_signature(label = nil)
    label ||= /[\w\-]+/
    /\{\{\s*cms:page:(#{label}):datetime\s*\}\}/
  end
  
  def regex_tag_signature
    self.class.regex_tag_signature(label)
  end
  
  def content=(value)
    write_attribute(:content, value)
  end
  
  def content
    read_attribute(:content)
  end
  
end