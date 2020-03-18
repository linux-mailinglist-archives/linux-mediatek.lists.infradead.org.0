Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983F7189C1A
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Mar 2020 13:41:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9TUWZ2246gr2kxvMBwkvkKMciL/kLU1qokdn5UdI7Ro=; b=OI9uIVSi/FeOG4
	drdG4ZOwMAi9XIByrbZzhH11ycxyUjDyV5MlY/gUFBPzkPjEetF0CR5hXzfGx8E1Tkb1lp7h83Kpe
	N6XHr16HAEMDgXDv0POpQmBjeLMGGgPQH1FmjnE5OxJVhY39HXOQT9MTmBd2QBZHhoIzjfUa+d/Pd
	pqodC1CXC9MoGlIGgSxdWTx3b+th1hfJEQB5NayVh1KD2eNA0h4qnCBJjZFREVhQ74ryoi80XbDMb
	A3mZGhmNnTvaVe5xQhw/2gK/AmjbV5d2HJ3xoajt49a05rLQNfRdh9iHavVNSoEJITk3psQ/6w6Yt
	t6DBzka/gLU2r6hnyFMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEY0p-0004Z2-Qf; Wed, 18 Mar 2020 12:41:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEY0m-0004Yi-LM
 for linux-mediatek@lists.infradead.org; Wed, 18 Mar 2020 12:41:29 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.48.128.122])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB5112076D;
 Wed, 18 Mar 2020 12:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584535288;
 bh=Q3YkWDIso2rkDToYkjHZTdthkqcDiWBoQtFaHy10IgA=;
 h=From:To:Cc:Subject:Date:From;
 b=vg4hfPo8Ao2hPKsZNNHUeEquAd5IxUr/Gl/q8ObhifNxoP38+w2ZtiQABhSTB77Qy
 2YlXjcealooVQ4e3aZwZ0D3BaKy1Li1ijoCTGQnAxmxCkmRCpcZWqgdEG7djfSa69Y
 ovA530FD5QZqMesrT562CAeJXkKlGHy513UGznPg=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: kvalo@codeaurora.org
Subject: [PATCH 0/3] fix endianness issues in mt7663e driver
Date: Wed, 18 Mar 2020 13:41:02 +0100
Message-Id: <cover.1584534454.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_054128_722007_9CA97837 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ryder.lee@mediatek.com, sean.wang@mediatek.com,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 lorenzo.bianconi@redhat.com, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix endianness issues reported by kbuild test robot

Lorenzo Bianconi (3):
  mt76: mt7615: fix mt7663e firmware struct endianness
  mt76: mt7615: fix endianness in unified command
  mt76: mt7615: add missing declaration in mt7615.h

 drivers/net/wireless/mediatek/mt76/mt7615/mcu.c  | 16 ++++++++--------
 .../net/wireless/mediatek/mt76/mt7615/mt7615.h   |  1 +
 2 files changed, 9 insertions(+), 8 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
