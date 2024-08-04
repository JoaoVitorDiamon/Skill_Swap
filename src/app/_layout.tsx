import { Stack, Tabs } from "expo-router";
import "../style/global.css";
import {
  Button,
  Pressable,
  Text,
  TextInput,
  View,
  Image,
  FlatList,
  StatusBar,
} from "react-native";
import { ScreenStack } from "react-native-screens";
import { NavigationContainer } from "@react-navigation/native";

export default function RootLayout() {
  return (
    <Stack>
      <Stack.Screen
        name="index"
        options={{
          title: "Skill Swap",
          headerStyle: {
            backgroundColor: "#212121",
          },
          headerTintColor: "#14b8a6",
          headerTitleStyle: {
            fontFamily: "Inter",
            fontWeight: "bold",
          },
        }}
      />
      <Stack.Screen
        name="register"
        options={{
          title: "Skill Swap",
          headerStyle: {
            backgroundColor: "#212121",
          },
          headerTintColor: "#14b8a6",
          headerTitleStyle: {
            fontFamily: "Inter",
            fontWeight: "bold",
          },
        }}
      />
      <Stack.Screen
        name="(tabs)"
        options={{
          title: "Skill Swap",
          headerStyle: {
            backgroundColor: "#212121",
          },
          headerTintColor: "#14b8a6",
          headerTitleStyle: {
            fontFamily: "Inter",
            fontWeight: "bold",
          },
        }}
      />
      <Stack.Screen
        name="(tabs)/searchPage"
        options={{
          title: "Skill Swap",
          headerStyle: {
            backgroundColor: "#212121",
          },
          headerTintColor: "#14b8a6",
          headerTitleStyle: {
            fontFamily: "Inter",
            fontWeight: "bold",
          },
        }}
      />
      <Stack.Screen
        name="(tabs)/notifications"
        options={{
          title: "Skill Swap",
          headerStyle: {
            backgroundColor: "#212121",
          },
          headerTintColor: "#14b8a6",
          headerTitleStyle: {
            fontFamily: "Inter",
            fontWeight: "bold",
          },
        }}
      />
      <Stack.Screen
        name="(tabs)/profile"
        options={{
          title: "Skill Swap",
          headerStyle: {
            backgroundColor: "#212121",
          },
          headerTintColor: "#14b8a6",
          headerTitleStyle: {
            fontFamily: "Inter",
            fontWeight: "bold",
          },
        }}
      />
    </Stack>
  );
}
