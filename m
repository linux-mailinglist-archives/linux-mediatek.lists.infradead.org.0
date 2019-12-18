Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC04812508A
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Dec 2019 19:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0L1JRgd9upjY78XcZqykWOUs1RqD+f3hQwrtRCJI3M=; b=WKATZLtmVMAm3p
	qLkWfB93uJEHMPlULBBnvguFxjCTsKQxoF8ec9bh3W5PjDwZJNRvLDfYzrlNUOM2uSaA3rN5ln2YZ
	1QYaDXQVlJTuQ8tQe9biixjdviPi3hn2ELIXLWfmvWIuI+7oeb+niILUnv9kgS8S51O6TPj8zsLUw
	ArO1B3+arQ09zDEMloMRDSJzU7CuFfiBZ4rPOY6Dh9QQuWpIeGqk2mz4Udy5QKWYmIAAI/L2WEYSO
	/UwQCCriHglOInGreGDY25ghBU4VP2qTfsCSwQeHjRSD3omoSpL1cA8JzMDyqnF7sIYWP/9i6E5Ke
	3AEVRGBcS0v7cqdpu33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihe0k-000702-BT; Wed, 18 Dec 2019 18:25:26 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihe0g-0006yx-Qp
 for linux-mediatek@lists.infradead.org; Wed, 18 Dec 2019 18:25:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576693523; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=wbgekAz2uN18H2Y7xQKuUSB/FojZz1qn3faWVvqfdzk=;
 b=S+TjjH/YJcOob8AAroVhDMHy3rk8zggt4G/2jveRVUiUffCXwutW7p/x8cBcsMYHRfRnl/qu
 Qzj+3cLziDRquUuZbxZg0JQ1zCFa3/Ju7pl46NmxNWELlv0oSVI5PrCsNK2mco1qKIJHCEAm
 RiJ4PG4/E4rpyfRht1nwPPOmJPQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfa6f0d.7fe958704998-smtp-out-n02;
 Wed, 18 Dec 2019 18:25:17 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C4D2DC4479D; Wed, 18 Dec 2019 18:25:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0AB15C433A2;
 Wed, 18 Dec 2019 18:25:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0AB15C433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] mt76: fix LED link time failure
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191216131902.3251040-1-arnd@arndb.de>
References: <20191216131902.3251040-1-arnd@arndb.de>
To: Arnd Bergmann <arnd@arndb.de>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191218182517.C4D2DC4479D@smtp.codeaurora.org>
Date: Wed, 18 Dec 2019 18:25:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_102523_646441_79A9F063 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> wrote:

> The mt76_led_cleanup() function is called unconditionally, which
> leads to a link error when CONFIG_LEDS is a loadable module or
> disabled but mt76 is built-in:
> 
> drivers/net/wireless/mediatek/mt76/mac80211.o: In function `mt76_unregister_device':
> mac80211.c:(.text+0x2ac): undefined reference to `led_classdev_unregister'
> 
> Use the same trick that is guarding the registration, using an
> IS_ENABLED() check for the CONFIG_MT76_LEDS symbol that indicates
> whether LEDs can be used or not.
> 
> Fixes: 36f7e2b2bb1d ("mt76: do not use devm API for led classdev")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Felix Fietkau <nbd@nbd.name>

Patch applied to wireless-drivers.git, thanks.

d68f4e43a46f mt76: fix LED link time failure

-- 
https://patchwork.kernel.org/patch/11294195/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
