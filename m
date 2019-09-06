Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DC9AB8E1
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 15:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IauZXy2W3PiPNJoAYXQiH/j59OkfksY5Fo9lgXOrrCw=; b=oOEZ0mNed5wbNn
	vNKfHnQPDfFSFSKNqWj4bQVPG3WTL341XWlITX3KSedmXK2qRwZqgoUSrvyAqTkzXqQUdTGbeHZpU
	deRu58ICLYinSK0CNFq8lICbT8dWXIxzMZ/fD+dchw6S8uHwjInr/GGqct4V5OdZWSpKSs5BlRu0H
	vAHQYS0lwseqJqCC7IhxXvcNkfkCrR3DdNv5NPe5pQ+IkM9rPbRu5Xel+ym1AeFtFqQXrvjEa7Vj+
	qu+189pTr0PRxnjoyPCBn/7TtagXuLNKO8cZi/qMm0baFICT7V2rJhDVeA35SAWj9RHsyvubjdEH+
	i9RfXvW1uDc+/7UAbjng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Dx9-00073c-SP; Fri, 06 Sep 2019 13:07:03 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Dx2-0006sg-BP
 for linux-mediatek@lists.infradead.org; Fri, 06 Sep 2019 13:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567775184;
 bh=0OF9nooHaaz9QiSyWV5QXoHDrg/gupxebmNBl1oIx/g=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=i19y1XQ+Sjb3Bf6S8JT/ov4XiVViT4w3FmhmkXSFhxP1ExYkhhJh5xlnkxozMzdPM
 P/jf/5zVqMgnCM+ZJTXaIQfEy6GJvi3qWzmbPnthfVrnb79F3lpZgiWUo0Fb1Io/7i
 MI9+Sml/1ZkmccIktxdk6XvudYj+hZ+5PL3LP8lU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.17.198.103] ([80.187.119.108]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LfC4q-1iUZHE1Ahk-00oo3Y; Fri, 06
 Sep 2019 15:06:24 +0200
Date: Fri, 06 Sep 2019 15:06:19 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190818135611.7776-1-frank-w@public-files.de>
References: <20190818135611.7776-1-frank-w@public-files.de>
MIME-Version: 1.0
Subject: Re: [PATCH v6 00/13] implement poweroff for mt6323 / bpi-r2
To: linux-mediatek@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <BB9183EF-A385-473B-A7D7-61D96499A291@public-files.de>
X-Provags-ID: V03:K1:V5jGArpFSoQO8rcBj/oQ7M7hCM+ph33LHPzlmTu2/Uz+Z+NoTcX
 mrjNJebj4twFmn5jbSeWp4bZPiW/10grqByIrn4WtPCQgOCLPpXEaJ2yGFdgw7i6E5BUstR
 PmB+0+7nZYeOikJPMidf6hjMitlyBSpljFZhNe1dJmHRpmpIxFDwyq26Z8gJSLVkTUkP345
 sigUEW/eA5FXNm5okGVWA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LbUxFDSt/zk=:PJB+ZDjqw9jlHwGn0v8G+9
 ZoPPHWH6MdiweCHknS64vnRdhUSdAjXf2iNfRIxkJw/Wd9GGsqM2WFeltXxYoRLzbWs1Bf/ma
 t0Dxia/F/n4J39LCCmwCmOUR1z7II/VEuNpW2BH8tGbyq/TRXSY8DVL825VR1ldMhwbMI633Y
 p4kNR2U8011tsKhy70Z+3LXbkfQLmtT42pGZms01zWEoWm0adawZGytqFK+CziG19bKgzb4F5
 gjsweP9/ldVIUbBzlPV5/tYpUvvcdiTqwLKxMAACQQAn//hGZITZ5DJqk394LtxEzwXv1fRKX
 K77zFNi6jvITwa1drVRrZ5UKJjwXcyUdokLikgWtInMttdDl+vMw5VZszP0DkdAFXLWNgNwSj
 7g4tbsc8Z7annB6R0NXWXX1iYyJy/oN0gxneOfrmofD8yUNhHBITrMEoZ63RHw3xZ+1vW9tz5
 zM6MFCwEs9gja5EsoR5EKOzGl7zx/xawvxzaOnjlRF8qqBz/Aq6kdD3RHXYJyQHnDgjX+lPMo
 sbqVCvlI27Udtg2KZzViMnT8DvM+BTlAdP7d5/tJr9/wEYaTmrkkBFpOlQTX17xxOSHxtHDL8
 ZeN+N3nM+8Y0XqPLfoyj77ug9jQblhYJ4WQhlZ4F+b3ltJzKX6T6RLtfDfjTjHw1Brng7YVUs
 L7WY6TYOEaiSow4rT9ZRMsO7fbYsClxiAIxBtLPYxy1yY0z5aH1KVAGQOeyB1UkIpDENZzNUn
 6yDwSc602T5HwU4CSXILbA9GCgLK/9mi6TjoU7pXct4m1fe2OG1ODkTmHnTVFg4nz7j42262K
 UI+LtfGaufr8CDFFAr8dHUOuXpZqK7WATZgTAJ/miO5QtsyudWrnrAvbZMUV3CIsoqOD5FEKq
 Ok3P7JS/ZgEakHaXCM8OdKC68A3+VNdASSVzSQhNQzGDMf0nwkqBZVcQJCvuOVAcfTJPOFThX
 P5pye6mweyyWCnmCUF9koHbO0kR/1jayur2+9LEzO4xzN+9EFjlGAmRrssiuAzc0qFSkFLctC
 yx341pRqpYY5NmA585RnYd55lwz2IK0A0+wy3GdVOUEtQqOt8+Wlo0yuz78LR1NQE5p5nP6WP
 7ZfAkS2I7zrD7knwe8/lk3PX0Ug1UJkFk16VDj0a6tsivIwSRnvwZCR5IdxQASTEl+j8xoGUR
 jpzoro+p01afJHGmXRY9lugwG2PLTqd6O6QNwYjgkjtvEVnj0nCbywyHVeT5b1wjSgVYlR7TY
 B0mvQACDg7E77Exb0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_060656_695045_A4D25A52 
X-CRM114-Status: UNSURE (   3.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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
Reply-To: frank-w@public-files.de
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Josef Friedl <josef.friedl@speed.at>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Eddie Huang <eddie.huang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Tianping Fang <tianping.fang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

Just a friedly reminder.

MFD-part was applied and visible in linux-next, the other parts acknowledged by maintainers. Is anything additional needed before applying the rtc/power/dts-parts?

Regards Frank

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
