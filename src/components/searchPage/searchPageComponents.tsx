import React from "react";
import { View, TextInput } from "react-native";
import {Feather  } from '@expo/vector-icons'

export function SearchInput(){
  return(
    <View className="w-96 flex-row border border-cyan-500 h-14 rounded-2xl items-center gap-2 px-4 bg-transparent mt-6" >
    <Feather name='search' size={24} color={"#14b8a6"}/>
    <TextInput style={{        fontFamily: "Inter",
            fontWeight: "700", 
            letterSpacing: 1.1, }} placeholder="Busque aqui!" placeholderTextColor={"#14b8a6"}
    className="w-full flex-1 h-full text-cyan-300" bg-transparent
    />
    </View>
  )
}
  

