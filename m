Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678FFE2089
	for <lists+linux-mediatek@lfdr.de>; Wed, 23 Oct 2019 18:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JBoTvxRh4R5Cwa/HDEXr7PSyBg14o1mRd5lu72b5Thg=; b=H0mXdlguZthA5h9lrP3w6KDsy
	nhw51+FNLd58W5ZcVGtUWlRepyFoIPb0abTbxSDIjl2ycHZsPSKJeUf/oV1/ylmqpbdKHCNN1anEP
	19544n7ym1k37v1z049PX+Jq4Fjy9t+Ktf29UXOHmlAtLrlIgE96529OoSuJEyRPaQJ81NC6L5DBg
	aGliFBO2UYRSFCSzrPn9ks2jid1uwjkkV112dGpQSS4IemqDN4Sg3lJC8c8azuRwmo2s/piu5FDcX
	e06Nu/2q28YJ6g5BromVSzC3DKb8P8ntOSeuCyD5NXZWOrpUyJyCmVNlCo1PhIIcxyC4jJ4MRn2YQ
	GoUg/bHtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJSY-00035W-2y; Wed, 23 Oct 2019 16:26:06 +0000
Received: from vulcan.natalenko.name ([2001:19f0:6c00:8846:5400:ff:fe0c:dfa0])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iNJSA-0002rp-V3; Wed, 23 Oct 2019 16:25:45 +0000
Received: from mail.natalenko.name (vulcan.natalenko.name
 [IPv6:fe80::5400:ff:fe0c:dfa0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id CFB2060CD4E;
 Wed, 23 Oct 2019 18:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1571847935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T8zzS7fQ1+h8Dch7o2XgPzxblvYJzj9a0o53CwTbiaY=;
 b=jnyA/zUOIOvhANewA4/U/XLZ/Yg3a6p75ZDGpruHbTgVE0VI+z43o04fM9QZWleV0efy7t
 wakILwZ4dlR90ml71qd+e8CMJa1hltGwsfHZiM/TRJN9xDLrbq+Q5/4hHoIwQmYQewf3mI
 tqSHWB4vLQInidp3POEexp11AoVST2E=
MIME-Version: 1.0
Date: Wed, 23 Oct 2019 18:25:35 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Subject: Re: mt76x2e hardware restart
In-Reply-To: <20191023085039.GB2461@localhost.localdomain>
References: <deaafa7a3e9ea2111ebb5106430849c6@natalenko.name>
 <c6d621759c190f7810d898765115f3b4@natalenko.name>
 <9d581001e2e6cece418329842b2b0959@natalenko.name>
 <20191012165028.GA8739@lore-desk-wlan.lan>
 <f7695bc79d40bbc96744a639b1243027@natalenko.name>
 <96f43a2103a9f2be152c53f867f5805c@natalenko.name>
 <20191016163842.GA18799@localhost.localdomain>
 <20191023085039.GB2461@localhost.localdomain>
Message-ID: <a2f0be152fc9ed53ea10b8e260c23faf@natalenko.name>
X-Sender: oleksandr@natalenko.name
User-Agent: Roundcube Webmail/1.3.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_092543_148804_BD6ADEFA 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:6c00:8846:5400:ff:fe0c:dfa0 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>, Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi.

On 23.10.2019 10:50, Lorenzo Bianconi wrote:
> I think I spotted the SG issue on mt76x2e. Could you please:
> - keep pcie_aspm patch I sent
> - remove the debug patch where I disabled TX Scatter-Gather on mt76x2e
> - apply the following patch

Thanks for the patch. So far so good, I was able to start AP, connect to 
it and conduct a couple of simple speed tests.

I'll use it more today and will let you know in case something breaks.

-- 
   Oleksandr Natalenko (post-factum)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
