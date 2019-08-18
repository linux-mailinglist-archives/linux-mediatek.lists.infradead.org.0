Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EF49175A
	for <lists+linux-mediatek@lfdr.de>; Sun, 18 Aug 2019 16:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXwASnIH49ilsXZ+gEAy0qmkM3Xng3NytVRKDwAgW/Q=; b=uL7FNV0MXGr4Cp
	A0ku3hi6Xy9fNR+x8KqmV2hgY5EkxK/nfGeEq08HUGyHRacZbnsREJfThiUjsVCk6wW8/3BpLJgna
	CT/tBFSWIK7pymSMtrMUG+8BtUzSKbA3rb6wre2MR0yEFFvbn3v4HBMEnb2mdkixm9LBZyTapfpbO
	fgbNPu7eUq8t5MI7QyJr2du9+MF34ay/vSGK9Ckvcf9Kc7q6LXt4BSzd9/9hx7MZHefYm2BkKVwLf
	5mHBRAbkzjQVYQg/nOZ1eXxJN3GKjX4CKsxbAGkv47RbPqlaEeA+kkNl6lAMyr1nOvNFJ6riJqK5F
	YP0NWPo56MzRX7KWfa4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzMCw-0003U1-O6; Sun, 18 Aug 2019 14:30:58 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzMCd-0003IP-Ox; Sun, 18 Aug 2019 14:30:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566138605;
 bh=hLYcToeezHf4hhXnjWzLCdKxM5gIK0icGM3XbjtZPHY=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=LgrhlsHHnrQ5D6dukHV9YUjrYL+t2YQqMc4Tawlbn/WGi4moyohaLXAM4rfZG86op
 N0fLGBd+G7erbyDkmIWN9VWzEWaDj1J2MwH+rz5cl8v3avLYO5MET8c/NsNEHuxxtS
 f1iIELB4GznxvEeaZOpqLDASVsB8m3cXPMcffHYY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.197.41.87] ([80.187.106.20]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LeMWL-1ibiHB3r49-00q9Hg; Sun, 18
 Aug 2019 16:30:05 +0200
Date: Sun, 18 Aug 2019 16:30:01 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190818135611.7776-1-frank-w@public-files.de>
References: <20190818135611.7776-1-frank-w@public-files.de>
MIME-Version: 1.0
Subject: Re: [PATCH v6 00/13] implement poweroff for mt6323 / bpi-r2
To: linux-mediatek@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <B8BBF532-0642-4BB6-818B-4376E1E70431@public-files.de>
X-Provags-ID: V03:K1:zOBPsfR5VsRIKzVesxNFmJJSCrm0Fff6ZmF6d2IwO5U7qE4OrFU
 b5ps1PHdKlgJOkcsi8EW0pRYXPEi7BYynicsUWIvTDroCdJSlLJW/P6tVOwKU8aWtRGUjf/
 UBXtLWIcoEiyWdxHKY8T95xF9y7/TIhvqDfUzS3KbVRbpn7kEd5UGX4IuRSeaE8XZy+IPKy
 9yonCI0h9cZVNA6usR/BQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:r0ruDgMvpM0=:ntuNEBZnKwg/0M0XUuunXI
 aMgls3M2XyuuBwgc3aXuM0XMXD65FwXYAUW/1cP834BllvVa/rNZhzgtyY3XrNOk9NJmTcMWB
 OW6WA8zLqutcBWQ+Utl563hVDtlxzjrTmbTz69U2uMu2La4mPHm5Icm2Kb6u27EzcQYkm4GXB
 ogs4cEjXHEsOqtElDTdmIqCC1jw75422kvotO2ZLdu9vw+P2JPSiQ/2r+p/B4wwE5/rWDZsjr
 mt8tBEkVL1UogwUIGAtkpcpOTlYbBTFZ4Hac3ZJgevC2J3LvaGcfSs2boXFepLZ4fcKSd/58G
 eWVlrO6xNX2pp+kV+erASbqmUwzVbBHA18Q3PVBJiBIB4NbgJbiTnu7jWjRzXuP51/zg3HTIO
 sYwXa9CYZcaGY2deMC6Galx4/s44gE6nidlNIWAEzmHoGPDpzxnZjEDQSLV+xl+NkYjdbhLe1
 8TvvFNMa5pdMa2CEz140FuQ4iCumSK/E+eaoMOpmifm/9gpKDMBqTKe6enSw6DdRvl73UPHbx
 syIwQpR0myvYJfNrcNHZtZ9325LiM4AuE5afyXvj0NG9BCarP/9IVbL5rOXxEPOpDGhxSmWo1
 0oRt1NSixNWZSb9Fc6rrAm4pZjut6QVSzHiZQLnMlf+Lx57BvCPGYMSN1+9KBOjJ0OROmqC2N
 aJ9lYXLPy6ISvk5ebnReKnxAdE2/YAIVIwYQ0lcD+RASDEuwGbHfbM0zqVDbacUzO1vSXTBR8
 9jI9xrPQ3xariQkni9HdCYrp3F6WnwjEFv1orPIcnoUrd+c02+KNp5lEHqrHjzz4iC2I7Q6eB
 yp9Y3vzPYztnXqTKPn8zENNIiwWMJLjd0k0VH50qjPFZMofBWYAeiE2xnXqT80HLXvYhL5rx1
 pNyg+nC5N/118Xhz7ik+pRfpec+mBZgLUqSkEaS61vTwxIrM/58JPZbG8zlwMafxnkXaoJYF/
 zQ3HBRTi0JWXuu27eEKrBK8sCfv+MsU3aY5G4KSdfAuoVU2ZweSydZ5z9MConAC5Z4Tb7jUhZ
 rJstYb5be3ik8NuGo8nOgFisd56yMYA3G5ItCY3hBiy3QEdQuTYU7WvArgosSyQS9J1MkGeks
 8A0CpD02P3L9wEd/kmbmum2LEuDoEOa2Kb6tNZcI8mmol56uCuB92R82CYchVEN5vVVth8xVl
 hTxqE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_073040_143202_F5301E34 
X-CRM114-Status: UNSURE (   3.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
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

Arg, missed a comma between

linux-arm-kernel@lists.infradead.org
 and
Alessandro Zummo

Will send the series to linux-arm-kernel later

Sorry for that

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
