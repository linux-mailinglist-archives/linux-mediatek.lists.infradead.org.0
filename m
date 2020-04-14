Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5F71A77FA
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 12:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8eEDJVI41o/Bav9SGkuIv6bFJYrZHar6CaJeVLFcro=; b=flwg1sentnQEiV
	d6Mo0g0vAn9y+/04TWSicIladMZ5BEMCbJBWx/in5QD2bkkcbqhhIyAAFIVmSUWmpy7kTMGrralNo
	v+teUfNIuRiychaalrV2WbX9z/VI9bVbEpr4k5y9zqhrMQXAJ7QSG3xVhnhz0vmkndY+jCeC4GIF9
	o7TKEQGmBgbXqLwO8S7E1pQ6F/0qy78IECA7q4hPWel40zI9xBxrnJU/XCkLBX8o1BzrZ9cw3HtyL
	llGFeyZTHbH4jLBB5uB79BX22errnBQVHjJDZqQIpz//IqSFj7D+GE4tgijpaKyxKvmbfsOi/Mz1g
	uzFEc9R1dK2jU8G/1o8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIMS-0004BQ-13; Tue, 14 Apr 2020 10:00:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIMO-0003HR-Mf
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 10:00:06 +0000
X-UUID: 1f5a9ff870874ffe92cf54c7ec7d110b-20200414
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=XIbn1mmZVm2efUla9Km08oZuKXyirzO1K4gplxG5iqk=; 
 b=Bc34bGWPBBg8nHRF7mhqSeT4Sc9rY7En4kUo5ZXptq/8xtEdAFhalkhDWSKZOQHWeASD7ORnjSeo4xjzT12orBu4dvDcdRaAs2qRCW7wb+Gd5iQRMyIpa/x0mNtEaSc74QQixuKvD5wIfNK9mifVV9aYnQ0qThEvObahTnXCLSo=;
X-UUID: 1f5a9ff870874ffe92cf54c7ec7d110b-20200414
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2117423086; Tue, 14 Apr 2020 02:00:20 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 03:00:00 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 17:59:59 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 14 Apr 2020 17:59:59 +0800
Message-ID: <1586858399.6545.1.camel@mtkswgap22>
Subject: Re: [PATCH 08/16] mt76: mt7915: add offloading Tx AMSDU support
From: Ryder Lee <ryder.lee@mediatek.com>
To: Kalle Valo <kvalo@codeaurora.org>
Date: Tue, 14 Apr 2020 17:59:59 +0800
In-Reply-To: <87imi2lg71.fsf@tynnyri.adurom.net>
References: <cover.1586507878.git.ryder.lee@mediatek.com>
 <0cf99a5f317b0d41cd4832b14c99b6b9b8e5fefc.1586507878.git.ryder.lee@mediatek.com>
 <87imi2lg71.fsf@tynnyri.adurom.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5E6B30C4384BF0F6BDCDCB7852B4FF82EE06A30A7C3E8D0B32B14A0C318800AD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_030004_753974_19FFE753 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sean Wang <sean.wang@mediatek.com>, Evelyn Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless@vger.kernel.org, YF Luo <yf.luo@mediatek.com>, Chih-Min
 Chen <chih-min.chen@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2020-04-14 at 09:44 +0300, Kalle Valo wrote:
> Ryder Lee <ryder.lee@mediatek.com> writes:
> 
> > Add module parameter to enable hw_tx_amsdu.
> 
> Why is a module parameter needed? And why is it not enabled by default?
> 

This is still WIP, so make it optional. But I will drop this one until
we're ready.

Ryder
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
