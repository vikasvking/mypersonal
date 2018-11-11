module TasksHelper
  def sub
    return ["History","Geography","Political Science","Economics","Mechanical"]
  end

  def history_select
    arr=[]
    Study.where(subject: 'History').each do |i|
      i.chapters.each do |j|
        str=j.name+'.'+i.book+'.'+'History'
        arr<<str
      end
    end
    return arr
  end

  def geo
    arr=[]
    Study.where(subject: 'Geography').each do |i|
      i.chapters.each do |j|
        str=j.name+'.'+i.book+'.'+'Geography'
        arr<<str
      end
    end
    return arr
  end

  def pol
    arr=[]
    Study.where(subject: 'Political Science').each do |i|
      i.chapters.each do |j|
        str=j.name+'.'+i.book+'.'+'Political Science'
        arr<<str
      end
    end
    return arr
  end

  def mech
    arr=[]
    Study.where(subject: 'Mechanical').each do |i|
      i.chapters.each do |j|
        str=j.name+'.'+i.book+'.'+'Mechanical'
        arr<<str
      end
    end
    return arr
  end


  def eco
    arr=[]
    Study.where(subject: 'Economics').each do |i|
      i.chapters.each do |j|
        str=j.name+'.'+i.book+'.'+'Economics'
        arr<<str
      end
    end
    return arr
  end
end
