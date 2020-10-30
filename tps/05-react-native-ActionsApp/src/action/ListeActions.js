import React from 'react'
import { View, Text } from 'react-native'
import UneAction from './UneAction'


const ListeActions = ({ actions }) => {

    console.log(actions)
    return (
        <View>
            {actions.map((item, index) => {
                return (<UneAction key={index} action={item} />)
            })}
        </View>
    )
}

export default ListeActions