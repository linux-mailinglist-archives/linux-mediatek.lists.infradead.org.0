Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3751366E
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 May 2019 02:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFjLBcpabdYWBFogEyLldQbAMcQ+M45loUf3fusP1mY=; b=rqJgGihwNWBZU5
	hIQH8pNRGgiootSp2Zo9uDKBPcMJ4Q6bq+bBlXL7Fyzba+8z8zGLwsadTU+F3tvfcDBO2s5nDUZed
	GeMc8U559UcY2ukf6+H+q0Fc+oUW7WNCv6ITKHy5AHYi/mIwdB2ogV5kqGIYhVnXOz/3/Ghih5bN2
	QF0rwf16n5A+vUmObA4Pl7vUHMs/wWINb0m4Jf/elYjH6Jb/mva3Xap0GdtGOEmlnsNCUv9kXOP6I
	5b5Jaom5JpHb5X1xJRrkLQDKTWztZjk9+/JP140RSO+wIB6+WYeEhRlkUhvSGSLlyEn7ktREIOG2T
	5129b/N4YfugDmse0pxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMi7I-00037y-O1; Sat, 04 May 2019 00:01:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMi7G-00037a-4J
 for linux-mediatek@lists.infradead.org; Sat, 04 May 2019 00:01:23 +0000
X-UUID: a6b80668f1d8427192bb7b9705d3bd13-20190503
X-UUID: a6b80668f1d8427192bb7b9705d3bd13-20190503
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 732818037; Fri, 03 May 2019 16:01:18 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 17:01:17 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 4 May 2019 08:01:02 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 4 May 2019 08:01:02 +0800
Message-ID: <1556928062.5650.5.camel@mtkswgap22>
Subject: Re: [bug report] mt76: add mac80211 driver for MT7615 PCIe-based
 chipsets
From: Ryder Lee <ryder.lee@mediatek.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Sat, 4 May 2019 08:01:02 +0800
In-Reply-To: <20190503130642.GH29695@mwanda>
References: <20190503130642.GH29695@mwanda>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2E6263642A61B45F0EBBDAD58B5B194AC361961ED4F430CACFA6B1DDDF8EDABD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_170122_182435_C3544495 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.6 BIGNUM_EMAILS          Lots of email addresses/leads
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-05-03 at 16:06 +0300, Dan Carpenter wrote:
> Hello Ryder Lee,
> 
> This is a semi-automatic email about new static checker warnings.
> 
> The patch 04b8e65922f6: "mt76: add mac80211 driver for MT7615 
> PCIe-based chipsets" from Apr 1, 2019, leads to the following Smatch 
> complaint:
> 
>     drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:1012 mt7615_mcu_set_wtbl_key()
>     error: we previously assumed 'key' could be null (see line 1008)
> 
> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
>   1007			cipher = mt7615_get_key_info(key, wtbl_sec_key.key_material);
>   1008			if (cipher == MT_CIPHER_NONE && key)
>                                                         ^^^
> This check doesn't make much sense.  Do you want to just remove it?

Just in case that 'key != NULL' but 'cipher == MT_CIPHER_NONE'. It
should not happen.

>   1009				return -EOPNOTSUPP;
>   1010	
>   1011			wtbl_sec_key.cipher_id = cipher;
>   1012			wtbl_sec_key.key_id = key->keyidx;
>                                               ^^^^^^^^^^^
>   1013			wtbl_sec_key.key_len = key->keylen;
>   1014		} else {
> 
> regards,
> dan carpenter



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
