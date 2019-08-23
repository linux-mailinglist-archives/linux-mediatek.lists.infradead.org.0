Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B7D9B5F2
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 19:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1ZbDDDfjVcFcrZnAygO668DLC1WjTDwtjdfFBYGGQU=; b=HcwXamRUE4m2+b
	TISCq+ZzZ8t5QFWCmkOHrUwAluBAzSvndXvAm3GwpYDlpyAHrpcMyPOlLKyC9q6LKMMTnOY2GQfeQ
	QQqi6vxw8xPXqhMW8xrWOMOnhQEfZ4OYAH4vC4yk/5GCE7q3AQ0To/S4DYe5wf66p6BG5OE9ovrHI
	/ZVyl9ZbdfJoNFF7wR+mjpQCoZBqOdQ4Z6a/vetVj2RNC9V58vk1l9048P3q/eh24IhFRfHTRJluP
	xC7E4ApeWF7oJa5rrhxIZt2wEW/iASfQHEaY8zYyi4BK9kHdhA8MQUkUFjgRxyMWhquQePBFql3GO
	m/ktYvnLB+oKprcfKycQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1DoI-0007C5-M0; Fri, 23 Aug 2019 17:57:14 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1DoF-0007A3-Oo; Fri, 23 Aug 2019 17:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566583013;
 bh=a3hZV3/n3ap+4WSZEq2RCiSPGLdIgJo4H4GyKnhd4jQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ts+0NBdd02jIOaF9g1O+JvxABsznTx6snIgz4VeDRBddaITcjR6Nqv3e0N6vElRv9
 jRvzmc4DkatBYwteaGDAGJqGUC/qDK/SBtcBUBRggGsH0rFcVPRHpZRajiD3FpW2hq
 812QeuqLdTWOt4wZp6hTWFFLox9/EA5C91RjywIQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.8] ([217.61.154.8]) by web-mail.gmx.net
 (3c-app-gmx-bs75.server.lan [172.19.170.219]) (via HTTP); Fri, 23 Aug 2019
 19:56:53 +0200
MIME-Version: 1.0
Message-ID: <trinity-df75d11a-c27f-4941-a880-b017ebabd3dc-1566583013438@3c-app-gmx-bs75>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>
Subject: Aw: [PATCH net-next v3 0/3] net: ethernet: mediatek: convert to
 PHYLINK
Date: Fri, 23 Aug 2019 19:56:53 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190823134516.27559-1-opensource@vdorst.com>
References: <20190823134516.27559-1-opensource@vdorst.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:S0kLgvQPkllpT2VhF6NadCxmnsC4j1OSSgjS8MvBJRToXf5272KzfOlHJTEuMwhdhRBkV
 alz6rIZAKym54sGmYq+kBS+OqXCV1CPFSm9ypNkwOGS14DBQAGcoVfPkdH5Nr7yncJza6H0T9DMr
 GZZCcFwyv72zk+Svv2dxTijzg3isID01ns4l5Tw3kfKQ41yAUKX5MS8Gm5+YCMtQydyWUEgWilq3
 HjT1GubFAxqdU7t3UOnwSylRmsBgFAQtFa37MIEPi0Iw0gTAhZUkmJCyNQM+D4nXU9D/xYGJC6W7
 Hc=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JjDFsC2WnnU=:dLB5XzDJgCgcJHVkZzvig5
 sTjeopAWAVioeRr8fmySRP1TgkFxKvRFvH3V4mUfeb3fHx8O0wsGCKSHrMOR9ELfHshqz3Bss
 MyLUU7uOWk+qzN2c5je2sFCKWuOnlgvfW5TBU3GXrj4g7k8wsqCcb3G7s+/c/CpNPMBmGDApl
 tA+kC+/VNwnmQy+Htr97ROyH7qzxTYPnlYARpzFm5Q1atphm6wW6AGx+UiVttsNQiK6X3LfoM
 /wzkvPtWesv8LfSmoa3a4NlT+PxQYDhCrBCWDgiT+QEapuBUT7KcVjl0fX+iuHIjsycbBHRKR
 a0hIyb6KORjVOjSz7R+0EzfIzV07qo7nuqwZqayALOnLdmzVHgWda3T9nfuy5BARIgEcJ8Ol6
 72tHrpLx3s7zrX3NUdgOaxgaFDkyfDZZ9yB7+yN/9reEukzot6BSvGtlnWe+LETCno+Mvx85o
 xW59anHfl78cmTchS7iFUcSnlZqikA8R5gYnrrfenNILbTq/DOYKlcUaNDbTMTYh0SyShz7sb
 LQwdrByFdm1qPiSo5CPNb5z+/+iT7agAiLSdyfq2nnKJSU6z5aZqOJ2KF8OqUeaBNe6/Jn1Oa
 JpFKrukp3wtwVa+GA8HZndkCd14kMpR3jlOXKi4jhjzz8s4nNll4XDfh03MRrUi57hEeZJ+OD
 eOpHjC0BxSYsKoUsR9axMSqPLp/noA04+c7IaR4XXlFg12w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_105712_102962_35D34849 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Nelson Chang <nelson.chang@mediatek.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org, Russell
 King <linux@armlinux.org.uk>,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

dGVzdGVkIG9uIGJwaS1yMiAobXQ3NjIzL210NzUzMCkgYW5kIGJwaS1yNjQgKG10NzYyMi9ydGw4
MzY3KQoKYXMgcmVwb3J0ZWQgdG8gcmVuZSBkaXJlY3RseSByeC1wYXRoIG5lZWRzIHNvbWUgcmV3
b3JrIGJlY2F1c2UgY3VycmVudCByeC1zcGVlZApvbiBicGktcjIgaXMgODY1IE1iaXRzL3NlYyBp
bnN0ZWFkIG9mIH45NDAgTWJpdHMvc2VjCgpUZXN0ZWQtYnk6IEZyYW5rIFd1bmRlcmxpY2ggPGZy
YW5rLXdAcHVibGljLWZpbGVzLmRlPgoKcmVnYXJkcyBGcmFuawoKCj4gR2VzZW5kZXQ6IEZyZWl0
YWcsIDIzLiBBdWd1c3QgMjAxOSB1bSAxNTo0NSBVaHIKPiBWb246ICJSZW7DqSB2YW4gRG9yc3Qi
IDxvcGVuc291cmNlQHZkb3JzdC5jb20+Cj4gQW46ICJKb2huIENyaXNwaW4iIDxqb2huQHBocm96
ZW4ub3JnPiwgIlNlYW4gV2FuZyIgPHNlYW4ud2FuZ0BtZWRpYXRlay5jb20+LCAiTmVsc29uIENo
YW5nIiA8bmVsc29uLmNoYW5nQG1lZGlhdGVrLmNvbT4sICJEYXZpZCBTIC4gTWlsbGVyIiA8ZGF2
ZW1AZGF2ZW1sb2Z0Lm5ldD4sICJNYXR0aGlhcyBCcnVnZ2VyIiA8bWF0dGhpYXMuYmdnQGdtYWls
LmNvbT4KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZywgbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnLCBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnLCBsaW51
eC1taXBzQHZnZXIua2VybmVsLm9yZywgIlJ1c3NlbGwgS2luZyIgPGxpbnV4QGFybWxpbnV4Lm9y
Zy51az4sICJGcmFuayBXdW5kZXJsaWNoIiA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+LCAiU3Rl
ZmFuIFJvZXNlIiA8c3JAZGVueC5kZT4sICJSZW7DqSB2YW4gRG9yc3QiIDxvcGVuc291cmNlQHZk
b3JzdC5jb20+Cj4gQmV0cmVmZjogW1BBVENIIG5ldC1uZXh0IHYzIDAvM10gbmV0OiBldGhlcm5l
dDogbWVkaWF0ZWs6IGNvbnZlcnQgdG8gUEhZTElOSwo+Cj4gVGhlc2UgcGF0Y2hlcyBjb252ZXJ0
cyBtZWRpYXRlayBkcml2ZXIgdG8gUEhZTElOSyBBUEkuCj4gCj4gdjItPnYzOgo+ICogUGh5bGlu
ayBpbXByb3ZlbWVudHMgYW5kIGNsZWFuLXVwcyBhZnRlciByZXZpZXcKPiB2MS0+djI6Cj4gKiBS
ZWJhc2UgZm9yIG10NzZ4OCBjaGFuZ2VzCj4gKiBQaHlsaW5rIGltcHJvdmVtZW50cyBhbmQgY2xl
YW4tdXBzIGFmdGVyIHJldmlldwo+ICogU0dNSUkgcG9ydCBkb2Vzbid0IHN1cHBvcnQgMi41R2Jp
dCBpbiBTR01JSSBtb2RlIG9ubHkgaW4gQkFTRS1YIG1vZGUuCj4gICBSZWZhY3RvciB0aGUgY29k
ZS4KPiAKPiBSZW7DqSB2YW4gRG9yc3QgKDMpOgo+ICAgbmV0OiBldGhlcm5ldDogbWVkaWF0ZWs6
IEFkZCBiYXNpYyBQSFlMSU5LIHN1cHBvcnQKPiAgIG5ldDogZXRoZXJuZXQ6IG1lZGlhdGVrOiBS
ZS1hZGQgc3VwcG9ydCBTR01JSQo+ICAgZHQtYmluZGluZ3M6IG5ldDogZXRoZXJuZXQ6IFVwZGF0
ZSBtdDc2MjIgZG9jcyBhbmQgZHRzIHRvIHJlZmxlY3QgdGhlCj4gICAgIG5ldyBwaHlsaW5rIEFQ
SQo+IAo+ICAuLi4vYXJtL21lZGlhdGVrL21lZGlhdGVrLHNnbWlpc3lzLnR4dCAgICAgICAgfCAg
IDIgLQo+ICAuLi4vZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1icGktcjY0LmR0cyAgfCAg
MjggKy0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjIuZHRzaSAgICAgIHwg
ICAxIC0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvS2NvbmZpZyAgICAgICAgIHwg
ICAyICstCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfcGF0aC5jICB8
ICA3NSArLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyAg
IHwgNTI5ICsrKysrKysrKysrKy0tLS0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRl
ay9tdGtfZXRoX3NvYy5oICAgfCAgNjggKystCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlh
dGVrL210a19zZ21paS5jICAgICB8ICA2NSArKy0KPiAgOCBmaWxlcyBjaGFuZ2VkLCA0NzcgaW5z
ZXJ0aW9ucygrKSwgMjkzIGRlbGV0aW9ucygtKQo+IAo+IC0tIAo+IDIuMjAuMQo+IAo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRl
ayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
