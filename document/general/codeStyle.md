# 通用代码风格规范
## 缩进
* 缩进长度为四个空格
* 缩进不使用一个Tab键，Tab键的长度有可能因为开发环境不同而改变。
* 建议将Tab键自动扩展为四个空格
* 代码例子

```java
public class Person {
    private String name;
    private Integer age;
}
```

## 行宽
* 行宽限定为100字符，即一行最多输入100字符

## 断行
* 不论代码块的代码行数为0、1或n，均写出完整的大括号对标识代码块
* 左大括号不独立一行
* 代码例子(代码行数为0)

```java
if (conditionA) {
} else if (conditionB) {
}

if (conditionA) {
    invokeMethodA();
} else if (conditionB) {
    invokeMethodB();
    invokeMethodC();
}
```

## 空格
* if/for/catch等关键词与其后的括号之间添加一个空格
* 操作符与操作数之间添加一个空格
* 代码例子

```java
if (a >= b) {
    invokeMethodA();
}

for (int i = 0; i < 10; i++) {
    System.out.println(i);
}

try {
    invokeExceptionMethod();
} catch (Exception e) {
    e.printStackTrace();
}
```

## 分行
* 不要在同一行写多个语句
* 不要在同一行定义多个变量

## 命名
* 类名使用Pascal形式，即所有单词的第一个字母都大写
* 变量名（常量除外）以及方法名使用Camel形式，即第一个单词全部小写，随后单词第一个字母都大写
* 常量名所有单词的所有字母为大写，单词之间用下划线分隔
* 代码例子

```java
public class GoodPerson {
    public static final COUNTRY_CODE = "CN";
    private String firstName;
    private String lastName;
}
```

## 注释
* 类注释、方法注释、变量注释，使用标准Javadoc形式
* 方法代码中的关键注释，使用单行注释或多行注释
* 注释不写在代码的同一行
* 代码例子

```java
/**
 *  人的实体类
 */
public class Person {
    /**
     * 姓名
     */
    private String name;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 获取姓名
     *
     * @return 姓名
     */
    public String getName() {
        //返回姓名
        return name;
    }

    /**
     * 设置姓名
     *
     * @param name 姓名
     */
    public void setName(String name) {
        /*
            设置姓名
         */
        this.name = name;
    }
}
```
