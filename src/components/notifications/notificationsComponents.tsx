import { Text, View } from "react-native";

export function TitleNotifications() {
  return (
   <View className="flex-row items-center gap-16">

    <Text
      className="text-2xl mt-5 ml-4 text-teal-400"
      style={{
        fontFamily: "Inter",
        fontWeight: "700",
        letterSpacing: 1.5,
      }}
      >
      Notificações
    </Text>
    <Text
      className="text-zinc-200 text-sm mt-6 ml-2 "
      style={{
        fontFamily: "Inter",
        fontWeight: "700",
        letterSpacing: 1,
      }}
      >
      Marcar todas como lida
    </Text>
      </View>
  );

}

interface notificationsProps{
  nameEnterprise:string,
  content:string,
  date:string
}


export function CardNotification({nameEnterprise,content,date}: notificationsProps){
  return(
    <View className="items-center">
    <View className=" w-96 items-left border border-teal-400 my-4 rounded-xl py-3 justify-center">
    <View className="flex-row items-center gap-1 ml-3 ">
      <Text className="text-teal-400 "   style={{
        fontFamily: "Inter",
        fontWeight: "700",
        letterSpacing: 1,
      }}>
        {nameEnterprise}
      </Text>
      <Text className="text-white "style={{
        fontFamily: "Inter",
        fontWeight: "500",
        letterSpacing: 1,
      }}>
        {content}
      </Text>
    </View>
    <Text className="text-white text-left mt-2 ml-3"style={{
      fontFamily: "Inter",
      fontWeight: "500",
      letterSpacing: 1,
    }}>{date}</Text>
        </View>
    </View>
    
  )
}