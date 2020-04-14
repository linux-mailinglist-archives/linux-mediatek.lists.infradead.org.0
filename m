Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1289B1A73BA
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 08:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8mKN1A8XBJ+GlWKcYS6RVfRs+79CCDARJYigVLtAic=; b=ZWXL8rmJKnXv6Y
	XTmRD6IBvMATguOQ5Lt7PMHe7tFNb8NDkSYomkBnPYwDdyRAbdaJLlQaZQU73ntLWPpYExR7sHgrW
	HbnyzI4JdsAbbQciZ0A6y/Yx4stdpP2I2C7QdOGt6+jE3FreSAcSVFaP6TAwZOVsPm9mqjbgGEFps
	bUSbkC4GeoAjXlHxiA3steHoK1BtwgWu+YMHZllkruvYK5jv+LOku9gdcuGhdjRm6Lg1YRu6X3kkp
	sIFFu5Tqzf0oynBXcwMlOWJq8SDFiMn2/AU5I0MVD289/tVIQTajXy0i5XgMtHSjE4ew7qkObTBmP
	/ALDYtlTnlJ+rKUORhqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOF7H-0004bG-To; Tue, 14 Apr 2020 06:32:15 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOF7E-0004au-Uc
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 06:32:14 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586845932; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=ob+tAqQqPFUftyV/IRMjatbp23VWl19cMrBGgD5tvHo=;
 b=xY5lbxNei0cybfiR4LF9VJhlZrFA/xCBwo165ECxHmCjWvxHDI6lBGypTIaN+kU5JDnJ2Pe1
 qBzZj3/+jlNFzlq/cIHYvDW4EWsLbmtj2ufZogOWlhAZI+7SSBmF74FI51Rj1XEbRP6ZGnjC
 WrONEtCPxSL6qwHKOoeByNK0iBA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9558e7.7f7ee0204340-smtp-out-n01;
 Tue, 14 Apr 2020 06:32:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 179FAC433F2; Tue, 14 Apr 2020 06:32:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E60EAC433CB;
 Tue, 14 Apr 2020 06:32:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E60EAC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: Re: [PATCH v2 2/2] mt76: mt7615: introduce mt7663u support
References: <cover.1586451954.git.lorenzo@kernel.org>
 <464261d4bc9d28c220cc2bc13244f99709949359.1586451954.git.lorenzo@kernel.org>
Date: Tue, 14 Apr 2020 09:32:01 +0300
In-Reply-To: <464261d4bc9d28c220cc2bc13244f99709949359.1586451954.git.lorenzo@kernel.org>
 (Lorenzo Bianconi's message of "Thu, 9 Apr 2020 19:09:42 +0200")
Message-ID: <87zhbelgri.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_233213_049047_4DA91702 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: ryder.lee@mediatek.com, sean.wang@mediatek.com,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 lorenzo.bianconi@redhat.com, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Lorenzo Bianconi <lorenzo@kernel.org> writes:

> Introduce support for mt7663u 802.11ac 2x2:2 chipset to mt7615 driver.
> Main difference respect to pcie code base is the usb code needs to
> configure wtbl from non-atomic context
>
> Co-developed-by: Sean Wang <sean.wang@mediatek.com>
> Signed-off-by: Sean Wang <sean.wang@mediatek.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

[...]

> --- /dev/null
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/usb.c
> @@ -0,0 +1,396 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2019 MediaTek Inc.

mt76 is ISC, why are you using GPL? I would like to avoid using
different licenses in the same driver.

While invistigating more I noticed other files using GPL:

Kconfig:# SPDX-License-Identifier: GPL-2.0-only
Makefile:# SPDX-License-Identifier: GPL-2.0-only
mt7603/Kconfig:# SPDX-License-Identifier: GPL-2.0-only
mt7603/Makefile:# SPDX-License-Identifier: GPL-2.0-only
mt7615/Kconfig:# SPDX-License-Identifier: GPL-2.0-only
mt76x0/Kconfig:# SPDX-License-Identifier: GPL-2.0-only
mt76x0/Makefile:# SPDX-License-Identifier: GPL-2.0-only
mt76x0/eeprom.c:// SPDX-License-Identifier: GPL-2.0-only
mt76x0/eeprom.h:/* SPDX-License-Identifier: GPL-2.0-only */
mt76x0/init.c:// SPDX-License-Identifier: GPL-2.0-only
mt76x0/initvals.h:/* SPDX-License-Identifier: GPL-2.0-only */
mt76x0/initvals_phy.h:/* SPDX-License-Identifier: GPL-2.0-only */
mt76x0/main.c:// SPDX-License-Identifier: GPL-2.0-only
mt76x0/mcu.h:/* SPDX-License-Identifier: GPL-2.0-only */
mt76x0/mt76x0.h:/* SPDX-License-Identifier: GPL-2.0-only */
mt76x0/phy.c:// SPDX-License-Identifier: GPL-2.0-only
mt76x0/phy.h:/* SPDX-License-Identifier: GPL-2.0-only */
mt76x0/usb.c:// SPDX-License-Identifier: GPL-2.0-only
mt76x2/Kconfig:# SPDX-License-Identifier: GPL-2.0-only
mt76x2/Makefile:# SPDX-License-Identifier: GPL-2.0-only
util.h:/* SPDX-License-Identifier: GPL-2.0-only */

Is there a reason for this? Can this be fixed?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
