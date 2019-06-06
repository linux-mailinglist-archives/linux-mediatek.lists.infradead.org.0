Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F86377A5
	for <lists+linux-mediatek@lfdr.de>; Thu,  6 Jun 2019 17:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0S6gnsibcezCML0RUYTQDSTR1hCzzDnJCg5eSNNX8Q=; b=LDxCHTbX+5+Lyv
	1Scorflku7TrGLH9kwURIFcAQiuWMtaDR1sDjLcu9aRvLa+PYmw2GF0qQTb4clzoFzF5ULeB6NeEv
	G9ajgEOYc6TKrVlbPNXuMwyipYR//i0FL81ei3+OIvWZXxWqIwJU4D/OtkF/jKTTp0G9NJKB15Qg3
	ee37SUOrLPmBZ2zAZaseEwf62kW69wQ0MhygCZvcnyhMmmwc7h8z0Ed3Zwpznd2tSdoroyU1Vzv37
	fNM1aqSxQDa3Pi0K3hhQK/WsQEfwQhtx6v4MTcuH9egAImZiXNu8F2BiMmlKyAX0wwySjw2eD/G4q
	18mOXlk0UO/fxQTvCZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuA2-0006uF-9Y; Thu, 06 Jun 2019 15:18:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYu9z-0006tB-2X
 for linux-mediatek@lists.infradead.org; Thu, 06 Jun 2019 15:18:36 +0000
X-UUID: 520c4bd0bc2a4e4db4e00a15eaaeb683-20190606
X-UUID: 520c4bd0bc2a4e4db4e00a15eaaeb683-20190606
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 693534870; Thu, 06 Jun 2019 07:18:25 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Jun 2019 08:18:24 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Jun 2019 23:18:22 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 6 Jun 2019 23:18:22 +0800
Message-ID: <1559834302.3339.1.camel@mtkswgap22>
Subject: Re: [PATCH v3 1/2] mt76: mt7615: enable support for mesh
From: Ryder Lee <ryder.lee@mediatek.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Date: Thu, 6 Jun 2019 23:18:22 +0800
In-Reply-To: <a0a6f631-2eb1-87cc-5653-338c6126690c@newmedia-net.de>
References: <a1ff446dfc06e2443552e7ec2d754099aacce7df.1559541944.git.ryder.lee@mediatek.com>
 <a0a6f631-2eb1-87cc-5653-338c6126690c@newmedia-net.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_081835_122882_D66DABC0 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 YF Luo <yf.luo@mediatek.com>, Chih-Min Chen <chih-min.Chen@mediatek.com>,
 linux-kernel@vger.kernel.org, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-06-06 at 12:14 +0200, Sebastian Gottschall wrote:
> in addition you should take care about this problem which is raised up 
> if SAE is used. since AES-CMAC required tid to be non zero
> 
> WARNING: CPU: 2 PID: 15324 at 
> /home/seg/DEV/mt7621/src/router/private/compat-wireless-2017-09-03/net/mac80211/key.c:1096 
> mt76_wcid_key_setup+0x58/0x9c [mt76]
> Modules linked in: shortcut_fe gcm ghash_generic ctr gf128mul mt7615e 
> mt76 mac80211 compat
> CPU: 2 PID: 15324 Comm: wpa_supplicant Tainted: G        W 4.14.123 #106
> Stack : 00000000 87c2d000 00000000 8007d8b4 80480000 80482b9c 80610000 
> 805a4390
>          8057e2b4 854fb99c 87ed045c 805e4767 80578288 00000001 854fb940 
> 805e9f78
>          00000000 00000000 80640000 00000000 81147bb8 00000584 00000007 
> 00000000
>          00000000 80650000 80650000 20202020 80000000 00000000 80610000 
> 872b9fe0
>          872a2b14 00000448 00000000 87c2d000 00000010 8022d660 00000008 
> 80640008
>          ...
> Call Trace:
> [<800153e0>] show_stack+0x58/0x100
> [<8042e83c>] dump_stack+0x9c/0xe0
> [<800349f0>] __warn+0xe4/0x144
> [<8003468c>] warn_slowpath_null+0x1c/0x30
> [<872b9fe0>] mt76_wcid_key_setup+0x58/0x9c [mt76]
> [<87611690>] mt7615_eeprom_init+0x7b4/0xe9c [mt7615e]
> ---[ end trace e24aeb4b542e0dea ]---

This is fixed by Lorenzo's patch -
https://patchwork.kernel.org/patch/10976191/

Thanks.
Ryder


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
