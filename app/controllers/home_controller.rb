class HomeController < ApplicationController
  def index
  end

  def result
    
    # Artii 사용하기
    a = Artii::Base.new(font:'big')
    
    # 정보 받기
    name = params[:name]
    date = params[:date]
    gender = params[:gender]
    
    # 설문조사 체크 항목 받기
    c01 = params[:c01].to_i
    c02 = params[:c02].to_i
    c03 = params[:c03].to_i
    c04 = params[:c04].to_i
    c05 = params[:c05].to_i
    c06 = params[:c06].to_i
    c07 = params[:c07].to_i
    c08 = params[:c08].to_i
    c09 = params[:c09].to_i
    c10 = params[:c10].to_i
    c11 = params[:c11].to_i
    c12 = params[:c12].to_i
    c13 = params[:c13].to_i
    c14 = params[:c14].to_i
    c15 = params[:c15].to_i
    c16 = params[:c16].to_i
    c17 = params[:c17].to_i
    c18 = params[:c18].to_i
    c19 = params[:c19].to_i
    c20 = params[:c20].to_i
    
    choice = [c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20]
    
    
    # 점수 합계 구하기
    sum = 0
    
    choice.each.with_index do |i,index|
      
      if(index==4 && index==9 && index==14)
        sum -=i
      else
        sum += i
      end
      
    end
    
    
    # 결과 구하기
    result=""
    
    if(sum >= 70)
      result="DANGER"
    elsif(sum >= 50)
      result="WARNING"
    elsif(sum >= 30)
      result="CAUTION"
    elsif(sum >= 10)
      result="NORMAL"
    else
      result="HAPPY"
    end
    
    # 비둘기
    @name = a.asciify(name)
    @date = a.asciify(date)
    @gender = a.asciify(gender)
    
    @result = a.asciify(result)
    @likelion = a.asciify("Hack Your Life !")
    
  end
end
