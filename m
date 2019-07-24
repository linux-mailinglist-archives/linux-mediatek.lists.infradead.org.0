Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF6172771
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 07:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xq+KaLKpFOySBTslFsmbfdEDKwb4HjFIEGPFtWrlhaI=; b=JlUpbfjTDQij/9
	iQmnaDHO3KcKNg4yKw4J9iiSK9psiowD79ZroS9Bqn7Yy/eEcCVLZR6VORHIaDEHI9aIIPMbgXnk/
	7bplY8yhxkGupdz2ngSgcfEaMpNi5YZQ7/VfiT8BikfHu63sJPNHybLC9a9fHdqNqdXwVfqMTwXHZ
	5+5GPc8kOMePb5sgU1vzbPUC4ARmE3ufrTpVwsacHKEN231rfQltvvCp2jFYb4zTjdzi7UBWuTApM
	jaK8DKSxFhdqDfHdSKqa+K38FdccrtryoNPWgyW37nfv0v7LK9D6vbaKXNbHn+9n4NtQ01GZT/ZVc
	bQN73uOJ+RgKUEu84QOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqA0l-0001d0-1T; Wed, 24 Jul 2019 05:40:23 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqA0H-00007g-Sm; Wed, 24 Jul 2019 05:39:55 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 02CDC61947; Wed, 24 Jul 2019 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563946793;
 bh=MMhai2COm8cnkYrv/dvMLvXqAKcjY56ENAXvop82H7U=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=nb4y6vBnz9vkLD+pOIry/36Icm3pzibY3vWq8Hw/MKQk82eZN5Xu6Okz/p+xD/O/y
 ptqssP+qM/GHEx2FfIlUYfZ691DgfRilOS8wG7jEGNl++sl3BwFuKqoiVbclW4Z5Fw
 5JADz9BIvRZB2Z5DxpSR28lazd8EYRCy8omMlSmw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D2C8760CED;
 Wed, 24 Jul 2019 05:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563946792;
 bh=MMhai2COm8cnkYrv/dvMLvXqAKcjY56ENAXvop82H7U=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=D4xHNZx0wfHaVp+2Zls4zbfCKV0fk4Pci1I4X0elSeXXAysqDci8QeoH8tvJsPoCn
 mRLFfiOzGaCcEshfsMkjJN1XN0KolGQb7SAuADNhT5iPtkHzpShOCeIimSYsxOnUgu
 gXinv+XQvHWvapDGY0gjfSm7yP3ERjLIBR0LVE5Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D2C8760CED
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] mt76_init_sband_2g: null check the allocation
References: <20190723221954.9233-1-navid.emamdoost@gmail.com>
Date: Wed, 24 Jul 2019 08:39:46 +0300
In-Reply-To: <20190723221954.9233-1-navid.emamdoost@gmail.com> (Navid
 Emamdoost's message of "Tue, 23 Jul 2019 17:19:54 -0500")
Message-ID: <87d0i00z4t.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_223954_087119_73545007 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: secalert@redhat.com, Jakub Kicinski <kubakici@wp.pl>,
 linux-wireless@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, linux-mediatek@lists.infradead.org, smccaman@umn.edu,
 Matthias Brugger <matthias.bgg@gmail.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Navid Emamdoost <navid.emamdoost@gmail.com> writes:

> devm_kzalloc may fail and return NULL. So the null check is needed.
>
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/net/wireless/mediatek/mt7601u/init.c | 3 +++
>  1 file changed, 3 insertions(+)

The prefix in the title should be "mt7601u:".

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#commit_title_is_wrong

-- 
Kalle Valo

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
