import { Link, router } from "expo-router"; 
import { ChangeEvent, useState } from "react"; 
import { Dimensions } from "react-native"; 
import { LayoutChangeEvent, Pressable, Text, View } from "react-native"; 

import Animated, {  
  runOnJS,
  useAnimatedStyle,
  useSharedValue,
  withTiming,
} from "react-native-reanimated";
import { TextButton } from "../login/loginComponets";


export type TabButtonsType = {
  title: string; 
};


export type TabButtonsProps = {
  buttons: TabButtonsType[]; 
  selectedTab: number; 
  SetselectedTab: (index: number) => void; 
};


export function TabsButtons({
  buttons,
  SetselectedTab,
  selectedTab,
}: TabButtonsProps) {
  const [dimensions, setDimensions] = useState({ height: 20, width: 100 }); 
  const buttonWidth = dimensions.width / buttons.length; 
  const { width, height } = Dimensions.get("window"); 
  const tabPositionX = useSharedValue(0); 

  
  const onTabbarLayout = (e: LayoutChangeEvent) => {
    setDimensions({
      height: e.nativeEvent.layout.height,
      width: e.nativeEvent.layout.width,
    });
  };

  
  const handlePress = (index: number) => {
    SetselectedTab(index); 
  };

  
  const onTabPress = (index: number) => {
    tabPositionX.value = withTiming(buttonWidth * index, {}, () => {
      runOnJS(handlePress)(index); 
    });
  };

  
  const animatedStyle = useAnimatedStyle(() => {
    return {
      transform: [{ translateX: tabPositionX.value }],
    };
  });

  return (
    <View
      className="bg-zinc-800 text-white" 
      style={{
        width: width - 50, 
        borderRadius: 15, 
        justifyContent: "center",
      }}
    >
      <Animated.View
        className="bg-teal-500 text-white" 
        style={[
          animatedStyle,
          {
            position: "absolute", 
            borderRadius: 15,
            marginHorizontal: 5,
            height: dimensions.height - 10,
            width: buttonWidth - 10,
          },
        ]}
      />

      <View onLayout={onTabbarLayout} style={{ flexDirection: "row" }}>
        {buttons.map((button, index) => {
          const color = selectedTab === index ? "c#333cc" : "fff"; 
          return (
            <Pressable
              key={index} 
              style={{ flex: 1, paddingVertical: 20 }} 
              onPress={() => onTabPress(index)} 
            >
              <Text
                style={{
                  fontFamily: "Inter", 
                  fontWeight: "bold", 
                  color: 'white', 
                  alignSelf: "center",
                  fontSize: 15,
                  letterSpacing: 0.8
                }}
              >
                {button.title}
              </Text>
            </Pressable>
          );
        })}
      </View>
    </View>
  );
}


export function LoginAccount() {
  return (
    <View className="flex-row gap-4 mt-2 items-center"> 
      <Pressable
        className="flex-grid" 
        onPress={() => {router.replace('/')}} 
      >
        <Text
          style={{
            fontFamily: "Inter", 
            fontWeight: "700", 
            letterSpacing: 1.3,
          }}
          className="text-gray-300 text-center " 
        >
          Ja possui sua conta?
        </Text>
        <Text
          className="text-teal-400 text-center mt-1 pb-16"
          style={{
            fontFamily: "Inter",
            fontWeight: "700", 
            letterSpacing: 1.1, 
          }}
        >
          Logue aqui!
        </Text>
      </Pressable>
    </View>
  );
}




export function RegisterLogin({ text }: TextButton) {
  return (
    <Pressable className="text-gray-300 border bg-teal-700 border-teal-700 w-96 rounded-full h-14 mt-8 flex items-center justify-center" onPress= {() => router.replace('/')}>
      <Text
        className=" text-white text-2xl"
        style={{
          fontFamily: "Inter",
          fontWeight: "700",
          letterSpacing: 1.5,
          shadowColor: "cyan",
          shadowOffset: { width: -2, height: 4 },
          shadowOpacity: 0.4,
          shadowRadius: 3,
        }}
      >
        {text}
      </Text>
    </Pressable>
  );
}