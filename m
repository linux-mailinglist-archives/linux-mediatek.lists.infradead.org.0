Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF15F1B3A80
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 Apr 2020 10:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bgk12+t3DsCB8Qp4MfeR4OOVqmuTRXogDIrhS6kXQiU=; b=N7SAqVgMw0xoHn
	uRPfdrjJmJzxN0AoThlYLZ0ftae7mWcrMWRwA1Xr4OUTWFjTeb2Nj3tuKWupO7SLKXamH3TCRKaEZ
	bCgNF6yxaycL1pv0KZAcPqzM55mElhhAX9RM0Und2eQaZ7ols46CJRgEAo84mhyWhKBM6P4w55dA0
	VDvPuqe9P6oCprAa6J/ukplBLAB7Pf0ftF6ZwQABwHH21h5jZ+PDwfimbPOQ9SJdW0RfQQi6p4qXE
	b0qw+YbHea8qqGmjpDyaP9dsgend3tijPrsOS9uA23fVMIfB7ViROOQAGCeKS1Mw5QxLZjtyC4jWS
	cAAAVOxteBhQFwk1I4SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRB2o-0000n5-7M; Wed, 22 Apr 2020 08:47:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRB2l-0000ls-9w
 for linux-mediatek@lists.infradead.org; Wed, 22 Apr 2020 08:47:44 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.66.196.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EF2020656;
 Wed, 22 Apr 2020 08:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587545262;
 bh=lRtm0RuSuuJdGk0FeGI4yJbIwGk/UbBHHHyDcsmTDDo=;
 h=From:To:Cc:Subject:Date:From;
 b=Y4gQoXv9GZl/bIcULNiB9KkKllLIvBVRNhD+7hZKkI+f/AebTr1ZRmzFbnuIkAbxR
 T5dCtd+7tzo+gNY8zntQ77+W2YR/ofu3M7uoNUSvX4S8J09xtaFtlPBdEVX75hqQ1c
 f2fzV5k7oisssmxxI6ginPWjhE0lxqDoF0kgetZ4=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 0/2] enable AirTimeFairness for mt7663u
Date: Wed, 22 Apr 2020 10:47:22 +0200
Message-Id: <cover.1587545092.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_014743_364730_32F6A28B 
X-CRM114-Status: UNSURE (   4.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Initialize tx_status_data pointer in order to enable Air Time Fairness
for mt7663u chipset.
Rework mt7615_mac_sta_poll for usb code

Lorenzo Bianconi (2):
  mt76: mt7615: rework mt7615_mac_sta_poll for usb code
  mt76: mt7663u: enable AirTimeFairness

 .../net/wireless/mediatek/mt76/mt7615/dma.c   |  2 ++
 .../net/wireless/mediatek/mt76/mt7615/mac.c   | 20 ++++++++-----------
 .../net/wireless/mediatek/mt76/mt7615/usb.c   | 12 +++++++++++
 3 files changed, 22 insertions(+), 12 deletions(-)

-- 
2.25.3


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
