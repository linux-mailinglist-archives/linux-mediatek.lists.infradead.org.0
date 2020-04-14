Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C271A73C9
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 08:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3h156P1CXTLj1GMY5PaRJOmYRZO7TO1GBPLzU1ltrxM=; b=AJJvvs+iDvtsND
	yABB6W2zL+0t7060w/WLQKuwvqyz1J8IMF2aXni34VYX90DwRCKmTysAAFsGESE9ZKHcRyNGG4Z1C
	/0wV4urrQmvvPwaeTTcDr81MJsUxtTEDXzgid9pBG3aG2yVUjwapt+Xv7AlS4C3SqqmkIv9NOeSgI
	zxPwq7b56oLjiwkXiKLr/LWzwCv9nxQ0pmXNt1xCWF5eBt+Pfbx0e4y7Vx44TWTD+NJvH7IS2u3lq
	tlXeYKesuVOgSk5ji915Ya8ipoXfX/GEBDoPdYLTJsq6OwrmTIdoPjf2b/xVOL1kcdHSYmRsvZT0i
	h6GW22YLx/9iPtuC2z/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOFCi-0007Qo-0V; Tue, 14 Apr 2020 06:37:52 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFCe-0007QU-Id
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 06:37:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586846268; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=o0Gyh/mmXnEx8d7nkWvk3UTOpVw4EYc81wUWo5sTSfc=;
 b=qKWwT0xu7xOWEP+TADcoIT/athChcOde79AEot4g4rNKQAIPYWiNFvVGJPgkjYDlI05NJG62
 WVdhNm3nK/iTMhYEirxmkCKAi7HLenHsw/FmLJ5z0DmqaeUdI/BoflIoAthhmMAceZf96y2R
 KQW/A6xcTx56ZYMfm46XheaA6u0=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e955a3b.7f17ce44c420-smtp-out-n03;
 Tue, 14 Apr 2020 06:37:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A769FC43636; Tue, 14 Apr 2020 06:37:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2AE91C433F2;
 Tue, 14 Apr 2020 06:37:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2AE91C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH 06/16] mt76: add mac80211 driver for MT7915 PCIe-based
 chipsets
References: <cover.1586507878.git.ryder.lee@mediatek.com>
 <3d9a74111aaadde7be00ec7c8c53d095daf4f9d2.1586507878.git.ryder.lee@mediatek.com>
Date: Tue, 14 Apr 2020 09:37:42 +0300
In-Reply-To: <3d9a74111aaadde7be00ec7c8c53d095daf4f9d2.1586507878.git.ryder.lee@mediatek.com>
 (Ryder Lee's message of "Fri, 10 Apr 2020 16:54:43 +0800")
Message-ID: <87mu7elgi1.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_233748_814986_D29EC18E 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: Sean Wang <sean.wang@mediatek.com>, Evelyn Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless@vger.kernel.org, YF Luo <yf.luo@mediatek.com>,
 Chih-Min Chen <chih-min.chen@mediatek.com>,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Ryder Lee <ryder.lee@mediatek.com> writes:

> Add support for the MediaTek latest generation IEEE 802.11ax 4x4
> device MT7915E, which supports concurrent dual-band operation at
> both 5GHz and 2.4GHz.
>
> Note that this patch just add basic part and will add more HE
> capabilities support in the further patches.
>
> The driver supports AP, Station, Mesh and monitor mode.
>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Shayne Chen <shayne.chen@mediatek.com>
> Signed-off-by: Chih-Min Chen <chih-min.chen@mediatek.com>
> Tested-by: Evelyn Tsai <evelyn.tsai@mediatek.com>
> Acked-by: Yiwei Chung <yiwei.chung@mediatek.com>
> Acked-by: YF Luo <yf.luo@mediatek.com>

[...]

> --- /dev/null
> +++ b/drivers/net/wireless/mediatek/mt76/mt7915/Kconfig
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0-only

Same as in my earlier comment today: mt76 is ISC, why are you using GPL?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
