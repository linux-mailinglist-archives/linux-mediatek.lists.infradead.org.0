Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C7A6F294
	for <lists+linux-mediatek@lfdr.de>; Sun, 21 Jul 2019 12:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHFFGkR1JQ6vvwuCM67xtZn8kHSdYI6ufQShr6x99e8=; b=IA2HoLHnHZfzQj
	T3BzCY1PqHAF8HR2mbLz3yO1SO4AztoyBKPo3GPf2HNYRqwgNxeDuKBWW1RKaj/IuJL5PFQKK0xam
	w/M8YQmI97YSVYgcFNtgoD4L1GTDmICTvsL8NNCO9bEUrgA2bONOpf6ETP3PI80yuFBtDxrJrZeOW
	ivL3K3xMjuzMFFuFynDfgFXrLfyYB0KGwsbZveOOC6I3YGD9TUWLpbyvekKrIo8QDO3POCV9h9YKt
	lL44Px0xeJlhPeT55qRrGo9vaKhYDbLREuf9nWDzVB5ZxhKg+x136zZxA5LqhX5eZKrfw3aGj8AyK
	bj+cQnTR5b7VOtM4b5RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp93S-0006vB-VK; Sun, 21 Jul 2019 10:26:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp93M-0006uZ-NT
 for linux-mediatek@lists.infradead.org; Sun, 21 Jul 2019 10:26:54 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 775D66076C; Sun, 21 Jul 2019 10:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563704810;
 bh=7RDOLUIE9KO0O7cBAwJ6NfKfJO3maV64i9i4jxGYZcs=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=QKxCkpXB1JVQdK6GyG/vAdLj1LFAQkvQ7o4kqxXVsolyWD9AVNJ2PfkZYZSmpYJJz
 67s7Kpwuk9yyF5+o7qxHlnyezyFtAW/tOAscPZD6QwXgc5ONY8bG9atiVSAZL+7GjB
 WFQ/AegL++eAqDkCZ7DeJxK4NRgmVs8ZwJ/wWWNU=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E6FFE60258;
 Sun, 21 Jul 2019 10:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563704809;
 bh=7RDOLUIE9KO0O7cBAwJ6NfKfJO3maV64i9i4jxGYZcs=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=aV1jM+urDLjxjQVxzvryRe3UyGH4ipT0NPyOYuvLpmFqzcwBLZFUNDRD3gBcbBq5l
 0OWxJ695ad4UjEsd8XmY6dFMTpfm2exBfye05MFzbmdbeywCUS7ZbE3dsOsN39IbPe
 chVSwtGHSQGUW27TjifxNQhBmwWne7XMNv9qMI1o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E6FFE60258
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH 1/3] mt76: fix checkpatch warnings and errors
References: <50d28c9b0f9e7d6b277d36fc93f55142d7535259.1563518381.git.ryder.lee@mediatek.com>
Date: Sun, 21 Jul 2019 13:26:45 +0300
In-Reply-To: <50d28c9b0f9e7d6b277d36fc93f55142d7535259.1563518381.git.ryder.lee@mediatek.com>
 (Ryder Lee's message of "Fri, 19 Jul 2019 14:55:34 +0800")
Message-ID: <87blxnsmxm.fsf@purkki.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_032652_803614_70BBF560 
X-CRM114-Status: UNSURE (   9.53  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Ryder Lee <ryder.lee@mediatek.com> writes:

> Fix warnings and errors as much as possible.
>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
>  drivers/net/wireless/mediatek/mt76/agg-rx.c   | 21 +++++----
>  drivers/net/wireless/mediatek/mt76/dma.c      |  2 +-
>  drivers/net/wireless/mediatek/mt76/mac80211.c | 30 ++++++------
>  drivers/net/wireless/mediatek/mt76/mt76.h     | 46 +++++++++----------
>  .../wireless/mediatek/mt76/mt7603/beacon.c    |  2 +-
>  .../net/wireless/mediatek/mt76/mt7603/core.c  |  2 +-
>  .../wireless/mediatek/mt76/mt7603/debugfs.c   |  2 +-
>  .../net/wireless/mediatek/mt76/mt7603/dma.c   |  7 +--
>  .../wireless/mediatek/mt76/mt7603/eeprom.c    |  2 +-
>  .../net/wireless/mediatek/mt76/mt7603/init.c  |  3 +-
>  .../net/wireless/mediatek/mt76/mt7603/mac.c   |  6 +--
>  .../net/wireless/mediatek/mt76/mt7603/main.c  |  7 +--
>  .../net/wireless/mediatek/mt76/mt7603/mcu.c   |  2 +-
>  .../net/wireless/mediatek/mt76/mt7603/pci.c   |  2 +-
>  .../net/wireless/mediatek/mt76/mt7603/soc.c   |  2 +-
>  .../wireless/mediatek/mt76/mt7615/debugfs.c   |  2 +-
>  .../net/wireless/mediatek/mt76/mt7615/mac.c   |  5 +-
>  .../net/wireless/mediatek/mt76/mt7615/mcu.c   |  2 -
>  .../wireless/mediatek/mt76/mt76x0/mt76x0.h    |  2 +-
>  .../net/wireless/mediatek/mt76/mt76x0/phy.c   | 23 ++++++----
>  .../net/wireless/mediatek/mt76/mt76x0/phy.h   | 10 ++--
>  .../net/wireless/mediatek/mt76/mt76x0/usb.c   |  6 +--
>  drivers/net/wireless/mediatek/mt76/mt76x02.h  | 24 +++++-----
>  .../wireless/mediatek/mt76/mt76x02_beacon.c   |  3 +-
>  .../net/wireless/mediatek/mt76/mt76x02_mac.c  | 16 +++----
>  .../net/wireless/mediatek/mt76/mt76x02_mcu.c  | 13 +++---
>  .../net/wireless/mediatek/mt76/mt76x02_mmio.c | 11 +++--
>  .../net/wireless/mediatek/mt76/mt76x02_phy.c  |  3 +-
>  .../net/wireless/mediatek/mt76/mt76x02_regs.h | 18 ++++----
>  .../wireless/mediatek/mt76/mt76x02_trace.h    |  3 +-
>  .../wireless/mediatek/mt76/mt76x02_usb_core.c |  2 +-
>  .../net/wireless/mediatek/mt76/mt76x02_util.c | 20 ++++----
>  .../wireless/mediatek/mt76/mt76x2/eeprom.c    | 10 ++--
>  .../wireless/mediatek/mt76/mt76x2/pci_init.c  |  1 -
>  .../wireless/mediatek/mt76/mt76x2/pci_mcu.c   |  4 +-
>  .../net/wireless/mediatek/mt76/mt76x2/phy.c   |  3 +-
>  drivers/net/wireless/mediatek/mt76/trace.h    |  9 ++--
>  drivers/net/wireless/mediatek/mt76/tx.c       | 14 +++---
>  drivers/net/wireless/mediatek/mt76/usb.c      | 31 +++++++------
>  .../net/wireless/mediatek/mt76/usb_trace.h    | 11 +++--
>  drivers/net/wireless/mediatek/mt76/util.h     |  4 +-
>  41 files changed, 201 insertions(+), 185 deletions(-)

This is way too big and the commit log is too vague, please fix one
problem at a time and describe in the commit log what you fixed.

-- 
Kalle Valo

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
