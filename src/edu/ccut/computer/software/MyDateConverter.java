package edu.ccut.computer.software;
import org.apache.struts2.util.StrutsTypeConverter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Map;

public class MyDateConverter extends StrutsTypeConverter {
    //自定义一个date格式字符串
    private SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public Object convertFromString(Map map, String[] strings, Class toClass) {
        //判断strings是否为空
        if (strings == null || strings.length == 0){
            return null;
        }
        String dateStr = strings[0];
        if (toClass == java.util.Date.class){
            try {
                //转换成date类型
                return simpleDateFormat.parse(dateStr);
            } catch (ParseException e) {
                e.printStackTrace();
                //由于convertFromString是重写，原方法没有throws，所以只能抛出运行时异常
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    @Override
    public String convertToString(Map map, Object o) {
        return null;
    }
}
