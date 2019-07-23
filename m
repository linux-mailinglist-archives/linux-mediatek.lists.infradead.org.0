Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7609171449
	for <lists+linux-mediatek@lfdr.de>; Tue, 23 Jul 2019 10:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHVX52Wi2RgMLCMdedDEtQMfc2oqMCSc8z9nlB5qTnc=; b=VodpJ1BbJAsaf8
	pwaaHjxbF8qlXYQyI6jvrkbCqlWynUEXIzOV2CDtxjXUnjpVbeTnKt7p2dt0jxolxWFAEXZaxi8eh
	kvfgBUxNKN8j+ETHdoH3gglSztaBhB44jTUj7QMS773mMLV0zkbDQwO1x1TKS2qcTJkr6Pa0FsD07
	uTqeg2LdqiPBld8puXupV0SfWUMpdrRueDgNFOTfAlSqKl+yn0l7IyLCmnw9q6uQ06mCsPiiw+Wrv
	xF4m77i73+C6M3G+EBjuYKlWuQ+RtUGF94HMoLrkQhk1Z3AF2KA5YjpihWuM20+NGLLVhrYmxZ6mA
	5gUWHiSXS0G99xb8Bj8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqPl-0000s0-BP; Tue, 23 Jul 2019 08:44:53 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqPN-0000ZD-U3
 for linux-mediatek@lists.infradead.org; Tue, 23 Jul 2019 08:44:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 431BD60E59; Tue, 23 Jul 2019 08:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563871467;
 bh=kxLkewl6Q0I7FEEg5DZ7f85vkdxTUMfxwv/cP5k0pDU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=A5hc6X5yO7V5UiU3S+bl/GseWX/nUvUy++zDnLFXa29aP70vI0agR22onPyXAg9ip
 7F6KQCcDUMkLJ8Vc0yjxhCCP+uQpzrFY6w4hT+8hTV74zT5Y1LNdl4tPIQ/L4Q9PBx
 LUM0bEX/1ggK2wQDLPRGyp1Wb86BuImQ2Jjv+7ek=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from purkki.adurom.net (purkki.adurom.net [80.68.90.206])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3333B619D1;
 Tue, 23 Jul 2019 08:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563871460;
 bh=kxLkewl6Q0I7FEEg5DZ7f85vkdxTUMfxwv/cP5k0pDU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=bfGBP0tetY8pP6f/42+dnDskyxyBz2Z7A6NaSNlgcj2mcCc6eldKZjp5PAIjaaI1E
 NTgK9VK3+5hq+5FUk8EakAZ+C6UzOxOKfZDqIYApCe7SRfJc5wZMKTde1UbTxsEk0T
 nIeI3p6myEvivgORGgyBTpMGl9eKYYBjYa58h1vc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3333B619D1
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH 0/5] fix many checkpatch.pl warnings
References: <cover.1563772403.git.ryder.lee@mediatek.com>
Date: Tue, 23 Jul 2019 11:44:16 +0300
In-Reply-To: <cover.1563772403.git.ryder.lee@mediatek.com> (Ryder Lee's
 message of "Mon, 22 Jul 2019 13:31:10 +0800")
Message-ID: <8736ixrvhb.fsf@purkki.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014430_012903_253F7CD6 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Ryder Lee <ryder.lee@mediatek.com> writes:

> This gathers many subsets to fix checkpatch.pl warnings.

Thanks, this is much better now.

> I still keep some warnings there due to readability.
> (The most of them are - networking block comments or 80 characters limit)

I do the same in ath10k. BTW, here's my simple script which I use to
filter unwanted checkpatch warnings etc:

https://github.com/qca/qca-swiss-army-knife/blob/master/tools/scripts/ath10k/ath10k-check

-- 
Kalle Valo

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
