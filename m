Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18734122EE0
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Dec 2019 15:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vtd3Ur5vWfM+48tJ5F2DJQzB6xcvBCU/hcd50+FA0ek=; b=h8gWW7rAejzLiM
	Mwt15gZZnCbf9ryCfYHIhjXn1YGsIR6ZDYI7DhBGm5WSml6OguImuPanLoRKtsfwtZm0Ulds9PtZp
	6JFMW3QqiirM7GmP6LfGMLga9UvGutnezVMPiewa8eGFCyqJ6P5mAGxVGtI42TNWAGO2hVORICqtz
	jvumBL9glU3ZRUI06ELsD455U6rAa5aM9lKeA8GjQYUyqJe7S+dBH9ReUWyEXEBM2JvBEDA+XRs3v
	omg+1TbeNgbdH54G9iKrmPCUaEpRP319DqcpmtkU6vf1BxmTOxxdyImyIzCD7bUdouGE1brNSUJPa
	T4fmNjCf67Jt50MtShow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDwX-0002gX-TO; Tue, 17 Dec 2019 14:35:21 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDwQ-0002d8-SS
 for linux-mediatek@lists.infradead.org; Tue, 17 Dec 2019 14:35:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576593314; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=21aBxipy8p7uk0rKdijJDM9b/aNaNo4M823NpVdIVDU=;
 b=UXcywob3w3WHof0J0qPgk0jTMxjv2Tunxr1gJbJ0KcbsjZEgGzxvYMaXM/JTlGap1YisduzI
 M1A/RgA8afeFu0fw0QIthwc6GIcCb2Und0mrJbQ34bvISuNKlkYy5boKaV+ej1+0DSH+epm+
 EIalLQrBXPQcIFRDMq3U43q2H0g=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df8e79e.7fa12ff73ca8-smtp-out-n03;
 Tue, 17 Dec 2019 14:35:10 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3CC1CC4479C; Tue, 17 Dec 2019 14:35:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6A0EEC43383;
 Tue, 17 Dec 2019 14:35:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6A0EEC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] mt76: fix LED link time failure
References: <20191216131902.3251040-1-arnd@arndb.de>
Date: Tue, 17 Dec 2019 16:35:02 +0200
In-Reply-To: <20191216131902.3251040-1-arnd@arndb.de> (Arnd Bergmann's message
 of "Mon, 16 Dec 2019 14:18:42 +0100")
Message-ID: <87lfrbaull.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_063514_983095_C09CA2E4 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

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

Felix, as this is a regression in v5.5-rc1 can I take this directly to
wireless-drivers?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
