extends Node2D

var websocket

var run_time = 0

var client = WebSocketClient.new() 

func _sendData(data):
    client.get_peer(1).put_var(data)
		
func _ready():
	var protocols = PoolStringArray()
	protocols.append("")
	client.connect_to_url("https://localhost:9090/connect",protocols,false)
	_sendData("Hello World")
