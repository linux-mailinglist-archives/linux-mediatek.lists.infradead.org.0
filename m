Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D6817EE8D
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Mar 2020 03:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuJ9aJZ89iK5oqOGGPbl3tVO1VsHJHUrcBlGIfX88gs=; b=RhXYQ6Ck9e4/f8
	VVIKeaJuwWaQ6OK2rdenJ2tIrh98GqbGDu86WdSQuABxv0Lgr1/z1UTU2MIzbvLo/0nwz9eQQdWuU
	e+17KhDWc0PtmTYH7pleKqwJeAho1vUX7hkvcxwdvvDkBuf1sWr6gF7sQyA0tPI/7YBex13i7QP0G
	wDandE+wj81ZQjk9CjH83Bd+eo1J5rYLzw+yhf0iobJnWvI2DYejOgS/DXJvf1wXSo2O1rXcmUklO
	3UWex1L5DUm2u/WyqF0SfUEVcheUTsu4fcJ0atsZMh8EXncNYoqyzoBXtYfEK4BJr9b5szo9esQf4
	8RpaacR5HZRcBvCj+oPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBUbG-00084F-2E; Tue, 10 Mar 2020 02:26:30 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBUbB-00083d-V7
 for linux-mediatek@lists.infradead.org; Tue, 10 Mar 2020 02:26:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EF53511E3C074;
 Mon,  9 Mar 2020 19:26:24 -0700 (PDT)
Date: Mon, 09 Mar 2020 19:26:24 -0700 (PDT)
Message-Id: <20200309.192624.1038727270612185821.davem@davemloft.net>
To: dqfext@gmail.com
Subject: Re: [PATCH] net: dsa: mt7530: add support for port mirroring
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200306123535.7540-1-dqfext@gmail.com>
References: <20200306123535.7540-1-dqfext@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 09 Mar 2020 19:26:25 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_192626_005106_F0477800 
X-CRM114-Status: UNSURE (   5.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, frank-w@public-files.de,
 linux-mediatek@lists.infradead.org, opensource@vdorst.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: DENG Qingfang <dqfext@gmail.com>
Date: Fri,  6 Mar 2020 20:35:35 +0800

> Add support for configuring port mirroring through the cls_matchall
> classifier. We do a full ingress and/or egress capture towards a
> capture port.
> MT7530 supports one monitor port and multiple mirrored ports.
> 
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>

Applied to net-next, thank you.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
