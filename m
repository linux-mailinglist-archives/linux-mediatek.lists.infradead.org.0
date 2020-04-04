Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006A619E630
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 Apr 2020 17:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCyKRXZPeU/IQGFTMFiZNeqKGSxgJsxfckkrV4caLPM=; b=NUesPE/h0HbG7a
	KPTHvVyzTW11qMrmMIdAP4fi+Gek+GZVE4kTFpwqCiw6B42hiJn5KESMJ9+B7r7COVhRfror8b5IE
	+i9Q67qTi6omrnPDIeRcQoJ37Necd6zP/CH30T7Ln/9/TlFDTROSoKcIagwCCmVgwP7MLqNg6EJqT
	z7lw4isQdLUsv/nammjNaqfSDWQRnDPCTdvowBn3UQglLl+R5bt3tlblF+7E+K/bdvy4KWShpdysd
	u/+y2+4fQFm+JAu51P4T05aYYaB+N4UDzHZWfZZ95HCMaTRNMotKqULYK7ce+qr63MEX0zRK8YjwS
	hIa76alCM83RXDbkk/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKkzq-0004XO-BU; Sat, 04 Apr 2020 15:46:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKkzf-0004Q3-TY; Sat, 04 Apr 2020 15:46:01 +0000
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B09F72076C;
 Sat,  4 Apr 2020 15:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586015159;
 bh=GMu0zk+p8QMuMWjCbtVqePXwGuMgSxIWxR0r1z6lvyU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QnkVdp/gyG8TvuSAYeRWfvp6TyOcb4HR3RmfcuKqMH+f51o15YIulJtAIOimkVXun
 lAkaRQGi24mhZheUSivFH7sPHMPFRyCwRPc6V5Sc4XQQ/dSbFnV/ak09dKTThtR2JU
 8FXui4qMBZLm8E/PiEFXSePCnrYYtPldWwwD1+Js=
Received: by mail-ed1-f50.google.com with SMTP id v1so13089597edq.8;
 Sat, 04 Apr 2020 08:45:58 -0700 (PDT)
X-Gm-Message-State: AGi0PubOaQvcXN6/pDR+WpUnMSM0NR768bLkxs2zjnbQVG/eGvzQzDH3
 5yQR72Y/t68B0VvehOKYXu1x/idRLjG7zjh9iQ==
X-Google-Smtp-Source: APiQypKX48tTaJ6RxCfGLNPptu/cJWdbVnwRtToRHot3QHJ2YgdHABiYCkH652IzhRi38qOA2XH03CE7gPBlBXCImT4=
X-Received: by 2002:a50:af85:: with SMTP id h5mr12733695edd.300.1586015157107; 
 Sat, 04 Apr 2020 08:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200331082725.81048-1-jitao.shi@mediatek.com>
 <20200331082725.81048-2-jitao.shi@mediatek.com>
In-Reply-To: <20200331082725.81048-2-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 4 Apr 2020 23:45:45 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-77zLp1W=29oxdFbPWzdiUbk-dJfEmUU16CJoLxC8FMg@mail.gmail.com>
Message-ID: <CAAOTY_-77zLp1W=29oxdFbPWzdiUbk-dJfEmUU16CJoLxC8FMg@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: display: mediatek: add property to
 control mipi tx drive current
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_084559_978623_07D51416 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5
tDPmnIgzMeaXpSDpgLHkuowg5LiL5Y2INDoyOOWvq+mBk++8mgo+Cj4gQWRkIGEgcHJvcGVydHkg
dG8gY29udHJvbCBtaXBpIHR4IGRyaXZlIGN1cnJlbnQ6Cj4gImRyaXZlLXN0cmVuZ3RoLW1pY3Jv
YW1wIgoKUmV2aWV3ZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3Jn
PgoKPgo+IFNpZ25lZC1vZmYtYnk6IEppdGFvIFNoaSA8aml0YW8uc2hpQG1lZGlhdGVrLmNvbT4K
PiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRl
ayxkc2kudHh0ICAgIHwgNSArKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
Cj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHNpLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRzaS50eHQKPiBpbmRleCBhMTlhNmNj
Mzc1ZWQuLmQ3OGI2ZDZkOGZhYiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkc2kudHh0Cj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWss
ZHNpLnR4dAo+IEBAIC0zMyw2ICszMywxMCBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICAtICNj
bG9jay1jZWxsczogbXVzdCBiZSA8MD47Cj4gIC0gI3BoeS1jZWxsczogbXVzdCBiZSA8MD4uCj4K
PiArT3B0aW9uYWwgcHJvcGVydGllczoKPiArLSBkcml2ZS1zdHJlbmd0aC1taWNyb2FtcDogYWRq
dXN0IGRyaXZpbmcgY3VycmVudCwgc2hvdWxkIGJlIDMwMDAgfiA2MDAwLiBBbmQKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGUgc3RlcCBpcyAy
MDAuCj4gKwo+ICBFeGFtcGxlOgo+Cj4gIG1pcGlfdHgwOiBtaXBpLWRwaHlAMTAyMTUwMDAgewo+
IEBAIC00Miw2ICs0Niw3IEBAIG1pcGlfdHgwOiBtaXBpLWRwaHlAMTAyMTUwMDAgewo+ICAgICAg
ICAgY2xvY2stb3V0cHV0LW5hbWVzID0gIm1pcGlfdHgwX3BsbCI7Cj4gICAgICAgICAjY2xvY2st
Y2VsbHMgPSA8MD47Cj4gICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+ICsgICAgICAgZHJpdmUt
c3RyZW5ndGgtbWljcm9hbXAgPSA8NDYwMD47Cj4gIH07Cj4KPiAgZHNpMDogZHNpQDE0MDFiMDAw
IHsKPiAtLQo+IDIuMjEuMAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaS1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tZWRpYXRlawo=
