Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A74B9756
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Sep 2019 20:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1nRilAyFuMSUrb+gwYKs/hNI4H7Rh1lLhQRrK2/EQ4=; b=d51sOiy4pdSj7o
	KJ50AzWVytHgHL9o6zt5VdW88/jjNSB617ot0Gvnq0Z+CmKWs7cYHgnajgadaWkM+qXrIvrykOUdP
	rokVBOLVNFxKy8gWM8KzzUP+AKZsX5QRlnq5jc5am+lECfDp8AtyC/yU91EWTg6gudBCWeSL/LXy7
	yfF4x3pvu6GcOQ/HTiQzLi+dUp3iL4bpsz9l9Ef25rrFVl9ygRq7C+x1kyUtahbfgY5caPWjzr81M
	7gsL/I8hQbKFkjJh2UZVWMmi4JX8jWm0nxArJCp9CsADqgIM0KNvHB7MLEyLosmAY5Z2lcLc+KOTq
	GwAmXacX4mbvdVE14rBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBNue-0007Ua-53; Fri, 20 Sep 2019 18:45:48 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBNub-0007TE-0G
 for linux-mediatek@lists.infradead.org; Fri, 20 Sep 2019 18:45:46 +0000
Received: (wp-smtpd smtp.wp.pl 15208 invoked from network);
 20 Sep 2019 20:45:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1569005134; bh=cizgm+wM/wjxUasVlGK7XAg12mZAPfOsYXg1d/8EQ90=;
 h=From:To:Cc:Subject;
 b=s5ny6L1GowL9XNrTar3fPEsX/ROiUgvN4PSEig0HQBPfKd+NPMYlml8HBaYwosXsM
 pIw+74PyBFdJfjgsNhteK+dKxq+FIgc9WlEwAa20eriPCWeZTbvRLK3SVfH3j1JGYO
 CeW+uDB4WLNOAsMJK7SYNkPTmOsnU36ogpr/QAxY=
Received: from 014.152-60-66-biz-static.surewest.net (HELO
 cakuba.netronome.com) (kubakici@wp.pl@[66.60.152.14])
 (envelope-sender <kubakici@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <lorenzo.bianconi@redhat.com>; 20 Sep 2019 20:45:33 +0200
Date: Fri, 20 Sep 2019 11:45:15 -0700
From: Jakub Kicinski <kubakici@wp.pl>
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Subject: Re: [PATCH] mt7601u: phy: simplify zero check on val
Message-ID: <20190920114515.36e1ed90@cakuba.netronome.com>
In-Reply-To: <20190920135817.GC6456@localhost.localdomain>
References: <20190920125414.15507-1-colin.king@canonical.com>
 <20190920135817.GC6456@localhost.localdomain>
MIME-Version: 1.0
X-WP-MailID: 624ef302b2416e660574dde2845ab35d
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [AVOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_114545_229968_C31CF730 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.10 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kubakici[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-janitors@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Colin King <colin.king@canonical.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 15:58:17 +0200, Lorenzo Bianconi wrote:
> I think this is not correct since (not considering the cast) we should break
> from the loop if val != 0 and val != 0xff, so the right approach I guess is:
> 
> diff --git a/drivers/net/wireless/mediatek/mt7601u/phy.c b/drivers/net/wireless/mediatek/mt7601u/phy.c
> index 06f5702ab4bd..d863ab4a66c9 100644
> --- a/drivers/net/wireless/mediatek/mt7601u/phy.c
> +++ b/drivers/net/wireless/mediatek/mt7601u/phy.c
> @@ -213,7 +213,7 @@ int mt7601u_wait_bbp_ready(struct mt7601u_dev *dev)
>  
>  	do {
>  		val = mt7601u_bbp_rr(dev, MT_BBP_REG_VERSION);
> -		if (val && ~val)
> +		if (val && val != 0xff)
>  			break;
>  	} while (--i);

Yup, feel free to add my ack if you post this, Lorenzo.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
