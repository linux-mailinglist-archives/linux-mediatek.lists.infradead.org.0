Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D7C4725C
	for <lists+linux-mediatek@lfdr.de>; Sun, 16 Jun 2019 00:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I+yBQ20gg9qTn2M5QJChOhxtZB1zUACUz0CyKfgxMxw=; b=L9sBNUp5mgIa9ZbkFzIpugWYpo
	sGNkko+gjcYXHrXqzwP2oTN07GFTAwnZ+XMiXuqZtwS4g89+WT77ljDAUYs73h2/uPk/a/lkLyZJm
	xLiYVytBS5jBnZinvl4nXsZzHWD4SIeGgAvGPAUC5awu1V49bnmB9FNunCWGb9DC6JnMlCByQuwT5
	MSBO0fkV67ZyhoOuAmtrwc/vOOMRHs2ULQ7WJyIQGhvZSelBiDwhvTLMzKtQdo1dBCjiecNJ71kLH
	JJpl/rlBV21ELUmzS2W4bB2cur97pQPSEMVC/VaFPtU6/OrpwwnfwLEf+nKsnsbidKmB5AwwOM+2/
	cS4amUQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcGy5-00033I-DE; Sat, 15 Jun 2019 22:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcGy3-00032q-0j
 for linux-mediatek@lists.infradead.org; Sat, 15 Jun 2019 22:16:12 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C52C2184D;
 Sat, 15 Jun 2019 22:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560636968;
 bh=4YVxV7HbUpm13BKfzCg1e8xaNclEnxXiKjoWIbihtW4=;
 h=Date:From:To:To:To:CC:Cc:Cc:Subject:In-Reply-To:References:From;
 b=I/zxxmxpgcnyNMO+hpLG3wyWSiVrZIN/xX5Sm17J9kTzUgKld/9Lch4P0AXeRW5lB
 eyzaq9mijXPeNKtrlKq+hej913G4FwYYZa5MwvTRc6mXusFxaAy8+EnpEcG+fudMQK
 XpjXGQOGGZfPTtVGB/nIZdil5EHeqpaBwm2UuVwE=
Date: Sat, 15 Jun 2019 22:16:07 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
Subject: Re: [PATCH v2] scsi: ufs: Avoid runtime suspend possibly being
 blocked forever
In-Reply-To: <1560352745-24681-1-git-send-email-stanley.chu@mediatek.com>
References: <1560352745-24681-1-git-send-email-stanley.chu@mediatek.com>
Message-Id: <20190615221608.7C52C2184D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_151611_077035_D164ADFF 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: , linux-mediatek@lists.infradead.org, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 62694735ca95 [SCSI] ufs: Add runtime PM support for UFS host controller driver.

The bot has tested the following trees: v5.1.9, v4.19.50, v4.14.125, v4.9.181, v4.4.181.

v5.1.9: Build OK!
v4.19.50: Build OK!
v4.14.125: Build OK!
v4.9.181: Build OK!
v4.4.181: Failed to apply! Possible dependencies:
    54b879b76ea2 ("scsi: ufs-qcom: add number of lanes per direction")
    bad9764cfaaa ("scsi: ufs: fix spelling mistake in error message")


How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
