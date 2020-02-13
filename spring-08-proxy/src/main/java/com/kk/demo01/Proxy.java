package com.kk.demo01;

public class Proxy implements Rent {
    private Host host;

    public Proxy() {
    }

    public Proxy(Host host) {
        this.host = host;
    }

    @Override
    public void rent() {
        seeHouse();
        host.rent();
        hetong();
        fare();
    }
    //看房
    public void seeHouse(){
        System.out.println("中介带你看房");
    }

    //签署合同
    public void hetong(){
        System.out.println("签租赁合同");
    }

    //收取中介费
    public void fare(){
        System.out.println("收取中介费");
    }
}
