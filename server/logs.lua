local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1049348483800383528/5dk5ie3NBiEUr2OunCffCuEBXIbUB-q27u2RKMjtEi4NSWoTBC3z0KIf3gGozr_7TYEW',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1047675567748677753/OtiIhwqqtW9tUBzl4Q3PnGKBR_lB1HXlm0gei9Z-La56b8QPRdWP4-Y7DliezNlIjFB3',
    ['playermoney'] = 'https://discord.com/api/webhooks/1047676772923224084/qY9P474SUANEf4jcO2iRn-FBo5MMoOAr3UOAkwI6UyhMM48vK3azIFUn5q3qgtzQXXmZ',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1047677261127626812/5EWi05mdN3nVFi00tmoZUii0Y07A9yKDwLOf_xPY8q58V5gT4tImSwiL0vtN50FtOcPk',
    ['robbing'] = 'https://discord.com/api/webhooks/1049546642069659708/h7k4INPfvvWdWRAzkFVrvK8HTQymXKQYz4-bT-nqDqUvuzqkXc8E_h3YA6_ZXzVY-6Y-',
    ['cuffing'] = 'https://discord.com/api/webhooks/1049348910835044422/8_LxzglAm7g2KNIIFdm_y6qUsEwlcWI4f_7eebzlYQd5eue7vYNV80l_oLceeoHJosiU',
    ['drop'] = 'https://discord.com/api/webhooks/1049348985569169519/SqujYfpbt-aCNrHJI23DEmNF5RxGWyzP8gpYrwFLns0JLToL-1CMAE9M4ws1uRA94F5U',
    ['trunk'] = 'https://discord.com/api/webhooks/1049349070285701130/9lJpyP21odKcNM887oIF1OlkNRc52HaHbAOC0w757SnY4d8XBWsvTiAsonjTt7E0T36A',
    ['stash'] = 'https://discord.com/api/webhooks/1049349151940427776/GJK1v8KKZgZcP2j5-r5ltc3wEynKHBocfsdondO-1YqpHNtigKRUJgvYO8zUcVNHJWvz',
    ['glovebox'] = 'https://discord.com/api/webhooks/1049349240905793646/2IbUJ9JA5n1PWZVY2siPPClFWWstwiNgfn6sqhrqFgPk6rnLjOidZs5IJSzRDTUasW-P',
    ['banking'] = 'https://discord.com/api/webhooks/1049350166647427133/BraHqDs1iYVUCShICEQr5ssO3GekZSIGUDQmZVSHTObVOAufcYanJOl8jnEdpayfstPU',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1049350232871284786/yFS06UTKNpcPYZOZc4_pavkjFY_z-FrKiEHPKm4FY4z-vYKV-pZ2yltIvd8Xitn8TxbK',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1049350310310723654/X8uwa1eEenOdyz-4Kx6lnzvGl61Ja1dmVOm8whKUlTTwH1u5P_hlWPKgWXaCdVuHux5X',
    ['shops'] = 'https://discord.com/api/webhooks/1049350396994400306/N8HJcAoa8Bz-3XEcihJZtRyYEPI21gCa9IifxfKsBhK1THcXb4ssnLxun965BHZ9ovHk',
    ['dealers'] = 'https://discord.com/api/webhooks/1049350454984855562/YlR0vZTR-mNd1tBdRWE441ewDf-K4wdvspL2xhymsZZzZDkWrQrbXANBt3bKdUdc5yH0',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1049350528322261093/fYbuJl04_EYis0Zhb60lRmAzJDXG7Fh84tU8V36X09Wust3lH8EK1BzBFgvVz6XiHiel',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1049350591173894144/EPU6CLYct0Kt4x-Y6lqTVSkF9km4QAoBIl2BzLuBVMdEkpcdv4qBNIuHJ3t3dbbMcwh5',
    ['powerplants'] = 'https://discord.com/api/webhooks/1049350657066414150/QleblFpi4s5NStae9ll5bDImdEhrx_xfwail0zxwyr3v9f6DccRmMV9wFbAE7lSCwPWt',
    ['death'] = 'https://discord.com/api/webhooks/1049350717267267655/siJkNbPGzpHH0FFeAfcp_3JPloh1lmMuf3GCu2z0o3Cp4S4gWxf_vL6A0rGAl1TANPYE',
    ['joinleave'] = 'https://discord.com/api/webhooks/1049350836200939550/awl1heZ3JK-sOsObnqDKj-w3mnNlM1Oinz8dT1TlEQouMMx2n0mn7euCawi-6Lno6DPI',
    ['ooc'] = 'https://discord.com/api/webhooks/1049350906493288580/i66-zxQ6C1b7zODrgjilcFJLLDCOM0-wA4kEgbF0fB5Jo4bp9RweBROarqA99e6XgL4l',
    ['report'] = 'https://discord.com/api/webhooks/1049350987493683201/3SIoYq6mfgsSoAdtEBFdG2Fo338FtjvGRftlVcZausL9JHW6tR4qVZXVHAVOl6v1ffJk',
    ['me'] = 'https://discord.com/api/webhooks/1049351063456710726/eIJxEcZ_YUaZKXU4oIVkF9-CzSDCj1_O7Xgb9xazc4obTagG6P2anz__EeCIiKOGRRXH',
    ['pmelding'] = 'https://discord.com/api/webhooks/1049351118360170546/PxfLu6uU4Iwt4i0nwVvMshqen9OvT7i95XVRxSJMEms2PK4pEfzPGH2mQwp936cRa6cB',
    ['112'] = 'https://discord.com/api/webhooks/1049351172189868083/S8c35LXOaaJXTSGYWYBMJ5AqJShT-hhUVuvGcppDN7Kti8SVg_hO7PmCV442ju2Dzhmo',
    ['bans'] = 'https://discord.com/api/webhooks/1049351234705961010/sDqoCHePwZ_kaOlZsBf9ZsmqCnm6MviBNRDwXLdB-zR3Z5yBaLQCk-CHRb6qkYMmZ5Qv',
    ['anticheat'] = 'https://discord.com/api/webhooks/1049351312657109104/6scjegErczAWGjnEZN_GWsMQtrCuFhpf9_z9mFyBRyVsV_MzEhyOnrYtzGb2THm7d_Nu',
    ['weather'] = 'https://discord.com/api/webhooks/1049351393112231946/EnOEZ-zCi7zvLVRC1-ZppCeiD3Wm9I2_B56qWm7VvsHvigeV8njPAeX3ZM3Yb0eYlN7Z',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1049351478382440598/e0PMp2Vjg797ExkRVhuCB6QEZn7FsXfn8BPFTOQbK3ic87njJl3ICcXROqYlfaW4Fhcy',
    ['bennys'] = 'https://discord.com/api/webhooks/1049351566995509258/PGnRbSt4HbH6rDl-2F2bA7otg2zWssl_opZZB0LF8gzWMB9PfXjlWYSGCcLCmKbZGoQy',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1049351644267155477/RXRjzH5AfV7_Le9ocdUL0YAg0jxWlwRKs0WTMYr_ptYxCZuu3etTPB77UhgmSFIRG-hr',
    ['robbery'] = 'https://discord.com/api/webhooks/1049351704887439440/fgFI0MJcpHsBtdMcHVLS19ZHowbbm0qnzBjdqteMXO4GmaYoc5Q1VfNe3a8Vqox-3n8X',
    ['casino'] = 'https://discord.com/api/webhooks/1049351769311957012/VomA2Iy46lmxEFyZdxJqac_-5F0uIHAIyGXe6SKMOBHi7kmlag7dbiUsqh3QUr68wZtV',
    ['traphouse'] = 'https://discord.com/api/webhooks/1049351834004893707/udw_hreJul7s0WSm0TsjXYYNpCnuUgUIEr2t-KbTPHhzmpr2QrOU_powiKjcuvk1u3nU',
    ['911'] = 'https://discord.com/api/webhooks/1049351914371944458/NIDFLWTsuk1u6yTGaZqBJjFzNqfxC2mmhXzVoWdt9Tmyk0S4KiqELQDg2AoKb6IW_kpT',
    ['palert'] = 'https://discord.com/api/webhooks/1049351973591318608/fQFTRRd7VfJCqig-Ac9J9-y0TZYnsktbPKG0Ng5RHOeH0RIp-QqnIV1YGxZRtXLwEnTH',
    ['house'] = 'https://discord.com/api/webhooks/1049352030952636576/nDpg0MC6SjAiGSEPX6VCpWi6Kfj8d0iUVsUBa1CKttqDW7gj9P_NkOdhnH6YHlPWbQyv',
    ['fishing'] = {'https://discord.com/api/webhooks/1054267366562869298/ZBNXzbrUzH0V0w5QniRRg8bEmaowYYnwNm40veh4o2L2CtiOriMkcxaixmRutfUhGCXc'},

}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
