Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5B51166C7
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Dec 2019 07:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCSqRVHVjioScDvpPk0G/uTiH6e3CDB9iUOFy+1qM4s=; b=ART1N66Qqs7Qu9
	jDs4rFEmU+cxdkEpRIVhMxDSbys8ygVM0yaIf10zzVaFvD5XH8h5abAHJ2Q7iYBh9iXRD1PeRoVEF
	iFn3OGIBwl7wX4tDx4ATM5DYKYOqxL9gyV+/DoD82Tsj/jWoBBnsf60jLu1HujyLQXU57GQ4ciMwy
	SVCO/CASJ5GZebmzPeEXTCYBgwg51MA5SHg+i3oTO9QAPBRumXFNpG+6ZP8bf+GDRrOgmo4nBI4wj
	5dCnX6GshQ/LdSmLRyP8SB7Q7m+9t2dOAe34S6VHtn+kQj6a6buDqTK/JIms9zGJZxkvgeP4RkMj4
	sDTDyD24zqSh1w5GZjSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieCPf-0006Bm-4K; Mon, 09 Dec 2019 06:20:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieCPG-0005mN-De; Mon, 09 Dec 2019 06:20:32 +0000
X-UUID: cde2ec8130414628a58d8106468feea8-20191208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=kTqvlfGMvsUZzVP+Eq0py88Up+EX3EjeHOY7T3c+KBw=; 
 b=taApkcvpkjU1a+JAxQdBjKE10E/XsCc0RSsxF1XUXI5JNR7vPIn7gR+eLirEX2pQoV61vkw6CLJoUSb31dBbATbb0VkaE/VeuWK2gLQVm1yRPvxN5woWwW3mKmuHDGdStiPfGXepERuoy9zaGLM4r1NIcR3BQ4q3W1ChrUpqNEU=;
X-UUID: cde2ec8130414628a58d8106468feea8-20191208
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ming-fan.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1279145664; Sun, 08 Dec 2019 22:20:21 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Dec 2019 22:20:35 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 14:20:11 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 9 Dec 2019 14:20:11 +0800
From: Ming-Fan Chen <ming-fan.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 0/2] memory: mtk-smi: Add bandwidth initial setting for
 MT6779
Date: Mon, 9 Dec 2019 14:19:29 +0800
Message-ID: <1575872371-671-2-git-send-email-ming-fan.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1575872371-671-1-git-send-email-ming-fan.chen@mediatek.com>
References: <1575872371-671-1-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_222030_468143_EAEC2740 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Joerg
 Roedel <jroedel@suse.de>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>, Ming-Fan
 Chen <ming-fan.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

*** BLURB HERE ***

Ming-Fan Chen (2):
  dt-bindings: mediatek: Add binding for MT6779 SMI
  memory: mtk-smi: Add bandwidth initial golden setting for MT6779

 .../memory-controllers/mediatek,smi-common.txt     |    5 +-
 .../memory-controllers/mediatek,smi-larb.txt       |    3 +-
 drivers/memory/mtk-smi.c                           |  143 +++++++++++++++++++-
 3 files changed, 147 insertions(+), 4 deletions(-)

-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
