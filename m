Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24B75F6E1
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jul 2019 12:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ej5+1D30pkEBsUgUkWL6IU0M2ODKKyov6vj/oXwUhws=; b=aonR/NO2KwlSv5
	sS36Qo9Kgn3wlizM4aV1InJD8LXZ36QY0LZSNmek1Xh8RmeL3qygtT9zzOTW01NXYQ1y3v2YNY2JO
	aCktziW5udx6mdrRLBCDwOSBEy+gKYtcSb92fSGYyyZVa4GQIBCTFaBxxnK2Vx/u7p+JEHX0IN9a2
	Ca8jirtt6BttZdnm3BhkXxVA2t1ZEBtrN+B0IIhFFtdfbwGDxl3btJwe/0Z+y7KJbBZpbH62BZahV
	FtyJw2LnQ0uBIh7iaMawd4fhs4onalbewzAyz6lvS+Gh0VH4YlxfA7qD4MI8g1nRqu4bO+I/WOy4l
	NxRrhc9iPsQ5TcKSBhyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hizPF-0006c1-6P; Thu, 04 Jul 2019 10:56:01 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hizPB-0006bQ-8y
 for linux-mediatek@lists.infradead.org; Thu, 04 Jul 2019 10:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562237752;
 bh=QT5qO+OGUFycJ05NeNegm6iIVTh+aUXINs8eLCHza4s=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 From;
 b=NDt8R6KAtWC7QYTChF3EwMiCwaiCsPd4AcoZF5mWaNZDi8Wwhx1Tyrq9hNMgVRTvP
 zSp2XKtbv3n2oXwtsuXyapEoQIjvONVZSCY90Rg+3RxfeoBufv6RW27r/JxeLHB9jC
 nvlQevIPRjOcZpT3uSnncPilHmFTEz0M7cA4XzSk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-bq ([217.61.145.121]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M4Jqb-1hiiHx1r0r-000Llk; Thu, 04
 Jul 2019 12:55:52 +0200
Date: Thu, 04 Jul 2019 12:55:46 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <d162c95d-773e-f364-0e06-07f67c5b0cbc@gmail.com>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-6-frank-w@public-files.de>
 <d162c95d-773e-f364-0e06-07f67c5b0cbc@gmail.com>
MIME-Version: 1.0
Subject: Re: [PATCH v2 5/7] power: reset: add driver for mt6323 poweroff
To: linux-mediatek@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <A03427CB-CE18-4F11-B614-D7E98249E4F9@public-files.de>
X-Provags-ID: V03:K1:bmDda6fCV3Ll3kepuJak9EvdzsWS/NLEq965+l1vIwuB54Qfqjw
 V6HTOH0t1MVx3064tdMhhj5beUtCgj46t5LxbucBPHDLhPbf9z1qGI9fmwudAqLljGmuPSn
 9vtocN8DXPDShaVUiCrEXapTpx+CCs6HY7DZNaZ9Tf57cMzR/WiR8Yw6pkYj0/3yNefud/7
 +TEVomwa8eXhBlRbKxC7g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OU5Oq9nwX3s=:YXNdXG41OTVXZuCf55w0yw
 1yyHmYnFRAUf40EMnwsp0jlgElx9fF0/1zH3/5xOLS5Hb19V7hT7S/PHXcCcVM1BZZCCB+nFu
 zBcplARTW3t0SjWQF3TtSv/rNbqdXZpe3RSH4yhzqEeR0FPnWb2zBPsLzpbXtJTT3T3V1nlSN
 H/IXFXMweCvkqlnxLw7hhn/mmThDlXEJsD0g8C5gDKmRl+OPCt96XgHp1RsWh3xWIY2COUjmp
 M0lWuT9Xu5GLLpgwZlBzwTyt2yBZ64TtzrwhnQWjjVHS2C5e7EbozO61iShi1rVISPXonK2Mg
 igTV8xnZUllA8oUESjcPDKsf8Pnr2CHGc91xl3X19zkckvbd4P1J9Gt6ubGjIZI5kafNG2tLP
 wvDPiLY1XPzTrD6Zkm87PHfssQoXunwjsmG9QGynxmWvawRSW1eb1iHMF25WTkADKEcnZFpiJ
 wubArbe9wqxjaons+q0FEYkdD0A9hBZaMW1NcAzeLUAfOnk85lCnfGz5zjuim66Gx11VCODg5
 TxhphgbbpqVtuX2vKFUWTUCJFqG/f5ClwW4gVZn4Qnq6/kgvSxMjQzrX8HraSSG8Pzap5N/ZQ
 XpGN8xRf307RXKOQyCcmMd0u9dEC9PEPyS6Iou7wsKFb4fyx3BoQ905Ox3J+1atvhWevg56eI
 oslhBXZorX6j3LDlPgSL6xNterzRuiZtPDuuhLL27pwtiPykRcmk5/fupFXGRN6dIyFsVDyXB
 ItlKEc3uui5NTEFI3lzOw5+xvfl4Rt5rfP25acY7w0SsUfokE+XDbeKy5o9y41UB01Ifcusqt
 nVCR9ONlPUczoKoDG9OqRqPCj3/UKCW0fCGVhtjdBGJln6sagjTLDowd3M7CPFTdWYQekVn9T
 K2htiXmDfRYRbG1F6M3ai1Ct78KexNxmeXzxASEKKTiGD7GFn1lyD3yu+cUdbTn0fSqQDVtJj
 sMb1Uj/B+tD5yqlTIWOIUlu0hyCnq/y4oaH+hUcpaqdamOYF5vAQBaOiGwPs4YO4Mg+D9Kgrm
 lTHqCfByZeYFA/QeKNFtNx9kcHHEt2jR9bSFedk23iBUEUoSTguIcBcWMz4DXzVq+9WVPKr2s
 aozEFj+JgdGFZdd3ApwLSVQzLtPV7JZRgId
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_035557_610983_A00D7C56 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

I have splitted josefs patchseries (v1) without modifying the code. So original commits have the signed-off and the new ones not.

 Matthias Brugger:
>Why is there a Signed-off-by from Josef for this patch but not for the
>others?


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
