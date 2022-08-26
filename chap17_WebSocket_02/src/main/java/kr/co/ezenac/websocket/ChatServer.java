package kr.co.ezenac.websocket;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

/*
 * 	-접속한 클라이언트들을 컬렉션으로 관리.
 *  -한 클라이언트가 메시지를 보내면 다른 모든 클라이언트에 전달하는 간단한 서버.
 *  -접속한 클라이언트의 세션 정보를 관리하면서, 메시지를 보낸 클라이언트를 제외한 나머지에게만 에코하는 형태로 구현됨 
 *  
 *  -웹 소켓 접속 URL
 *  	ws://호스트:포트번호/컨텍스트루트/ChatingServer
 */
@ServerEndpoint("/ChatingServer")
public class ChatServer {
	//멀티 스레드 환경에서도 thread-safe한 Set 컬렉션 생성
	//여러 클라이언트가 동시 접속해도 문제가 생기지 않도록 동기화함
	private static Set<Session> clients = Collections.synchronizedSet(new HashSet<>());
	
	//클라이언트가 접속했을 때 실행할 메서드 정의 
	//clients 컬렉션에 클라이언트의 세션 추가함
	@OnOpen
	public void onOpen(Session session) {
		clients.add(session);
		System.out.println("웹 소켓 연결 : " + session.getId());
	}
	
	// 클라이언트로부터 메시지를 받았을 때 실행할 메서드 정의
	// 클라이언트가 보낸 메시지와 클라이언트와 연결된 세션이 매개변수로 넘어옴
	@OnMessage
	public void onMessage(String message, Session session) throws IOException {
		System.out.println("메시지 전송 : " + session.getId() + " : " + message);
		//동기화 블록
		synchronized (clients) {			
			for (Session client : clients) {		//모든 클라이언트에게 메시지 전송
				if (!client.equals(session)) {		//메시지를 보낸 클라이언트 제외
					client.getBasicRemote().sendText(message);
				}
			}
		}
	}
	
	// 클라이언트가 접속을 종료했을 때 실행할 메서드 정의
	@OnClose
	public void onClose(Session session) {
		clients.remove(session);			//clients에서 해당 클라이언트의 session 삭제함
		System.out.println("웹 소켓 종료 : " + session.getId());
	}
	
	// 에러가 발생했을 때 실행할 메서드 정의
	@OnError
	public void onError(Throwable e) {
		System.out.println("에러 발생");
		e.printStackTrace();
	}
}





















