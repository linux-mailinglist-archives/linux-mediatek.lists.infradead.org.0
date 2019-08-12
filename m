Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A89089C6A
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 13:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbA4Csm5gOVWZRgFQwQohziQYV55FjJc+sOK46ww5N4=; b=Z3xH1zh+eRgPxe
	iQjf8OJfYa/KvXbn/FZUz+oB+U3jB8A6+JEAUU/RSDE4YAfuCc43cdHZS3T9VoM961YV/9EheFfKC
	pEKCErt2EbupIz5ylFcJKGJweET56GXR4FjgZ7VuxJP4qf4L2vUVRSRuu0EXN/TiRWcSWyH2LId15
	rXAzUDqFhKvQ3YQ0ViRdbPw2jjXEk/ns4gPv7U/guAaiIsiUOyYqTZcYZCq8MC+abS7myROPwuLyW
	aabhy5JpR4ZrQ2g3Xjh+sRDjEzaMnkeSofuP8vP6YodRkr9+cAWU+vLTxpkLsQOo/gu47OjGZ4cE6
	4PfpKc2F5hqeB5MIgf/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8Eg-0002Wm-GI; Mon, 12 Aug 2019 11:11:34 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8EY-0002WM-V8; Mon, 12 Aug 2019 11:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565608221;
 bh=+ophfXLwLk+afBtB/rZc1lujr07rFNbL1cd41/w8NW8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=f4roB1GSu0EC7x8wBJIJJzCRhVE+r7l9qEGONpTMKMQkSTEJndIJ2DkyaySRdMbE4
 uC9PJmvvvDVY44rAP4mhUEhbd6yS6DULQFCqTgWMHk1WzoptJjKWINn9+4FYbWeiPB
 4Lk5EAVgpctClPLFIg82nvB9GZGBFnIiJrswpCk4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.152.193] ([217.61.152.193]) by web-mail.gmx.net
 (3c-app-gmx-bs80.server.lan [172.19.170.228]) (via HTTP); Mon, 12 Aug 2019
 13:10:21 +0200
MIME-Version: 1.0
Message-ID: <trinity-a6c06411-16d3-40ab-a4fb-3494131c8ed6-1565608221532@3c-app-gmx-bs80>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Lee Jones" <lee.jones@linaro.org>
Subject: Aw: Re: [PATCH v3 01/10] dt-bindings: add powercontroller
Date: Mon, 12 Aug 2019 13:10:21 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190812102035.GH26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-2-frank-w@public-files.de>
 <20190812102035.GH26727@dell>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:nmdxPcpv1uAOSEOZCdIb1nl5oNguyNi/HmeC9XNP24VaugxXHLpA6tNoOAQIMo5Ml3UaJ
 rcZhVH+eXTXdQH6ssIrYGfZcT3d4yzf/5JkQk6WCFLvKMu8gB+B1ODR+edpsCxnfqhEEm9NEFI0F
 g4Ckmv50XbLP3/CD6UmQJoTzSbwzW708cDXF9GxXCF4wEprhYo1oGq92t+QFDy1dK0KvCT2W0Eoe
 uRg5lyq5dID/788y8Bk+kjVYTaJEes1YnZ7JiQtlL6YXF1YnqVrVk6JWvYbB7DIuRcQVK9/wyFTk
 Zc=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DKMdH5KOymc=:wFlnzZoxQYlkTeKilc2o8z
 ZKPFO1aEtPBUtCYeEYH0JYWfXRncpmZa90VgSB/0Li6bsMB1bDCDnJzLX+s316Dyj19o4Yx5t
 WhXIsEglja9h8cl7hzoXfT9j1XlWHiHrlIWfUXb0IaEIz6nYgH6dgnHw+F8drX+7jTPYK6AS2
 +LgANMVZ+WAwDmggyHu+sLC4AwwKtxIvpcDptf0pu5h+0iaJp5RqOeY+OJY0WvoZKE4n8qG5y
 KYHYI8oB6pgJ9rMcJkp41EehcbnLa5zZGJgsTyu3huxkrokQ4EMHLuVvbb04jF4k5t/cRieNM
 TKWPjlcELVzCP7Xoemr8cPXR9TO4I4E32UovuH3qKOJ0BEZyLbQTSWmy7QAhmvwKpvIIi99sF
 iI9ykpe883a/ZB0UilkL9cTQSMD9KpZ6EAYbcbzdpeI21KWj2XOxtilSotJ/Lt+oclI8YqFPo
 bM6EsFZEPrIlLtOa7ssV+RcYLfOwncnOE5CjuiNANd/OeaCU0wncbxjt8oeBVmgux3+vV73zk
 Qtmx3BWz/unEnrNuv6wv0/QP4eWwRX9nxIBTI5MKJ8BxL3vx7/UUoYOVma4qHEnMoegaQWKyX
 OR8vXp74oIz89XgGc7OcKdx1UdmWcWFtaJ2EigBRrMJhxRkdkqiIfQEoBqjPYSx6RfD9PpIrU
 lgvCg8Xv5d/Az0oQHW0WnG/9tzpIjUhDNgsKPs54wtUAP6Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_041127_378066_9632076F 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>, Mauro
 Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie
 Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> Gesendet: Montag, 12. August 2019 um 12:20 Uhr
> Von: "Lee Jones" <lee.jones@linaro.org>

> > --- a/Documentation/devicetree/bindings/mfd/mt6397.txt
...
> > +	For details, see Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
>
> Please use relative paths.
>
> E.g: ../bindings/rtc/rtc-mt6397.txt

Hi,

as we are in Documentation/devicetree/bindings/mfd/ it should be ../../bindings/..., right? or ../rtc/rtc-mt6397.txt ?

regards Frank

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
