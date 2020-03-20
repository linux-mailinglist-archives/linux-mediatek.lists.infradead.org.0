Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2BB18CD27
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Mar 2020 12:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hucejPk8eyRtRG0336v6/Bf05ZxazwfqEag0BdxE4ow=; b=bv8EhU0iRSrMQv
	d9nDAS1RydEAfV8rHPCmjGNfttOJ3Pk/5yvMzKIqPDXLSDHFeLft9drJNzxkOOgQle+kWHAug7vSp
	Gv0uviXjOgu8yuYxhl0dhDjCGwaUjxxuPW0WvEbNou1UhwoVMprev4OZsfvsBvERLVHCKZZ+bUnn4
	OURpAcB5MhcO18qIX9pDtBkBmVsi7W0orU4LaiuduTpNZIWSMowGRCH10XL6lAi/C4QajUWqLNMEy
	aBNRJ446mplYv1s9P0uCmehr+5Mv0PRWgRcHkVYhBRKKIpwQLVQN08Doom5tGHsGO+xjEC6YPwsdX
	EBFHZ8ZzDG9FMMjFrQew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFG0h-0005af-K1; Fri, 20 Mar 2020 11:40:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFG0U-0004sZ-D3; Fri, 20 Mar 2020 11:40:07 +0000
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
 [209.85.166.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D4162076E;
 Fri, 20 Mar 2020 11:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584704405;
 bh=iy0DPkUN8K/G9bJpje5gyRzlt0Krjnhy7Jq9VXkD4Zg=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=ypLJA4KmidGx0Lf3/OGyq8WwqXPUqQp02gA6ofsognYX/c3pZCkXozDQg9kSEyy4m
 FTHhPfGrroszbknTTIk/a/3GG67Tpfh78D5axGbPHvFom+NjNGz7sSvNbxIWhWNDNR
 jrNTNt87SUb1Df+wR/UwtslkR7Tiolj4oXkXOp18=
Received: by mail-il1-f182.google.com with SMTP id m7so1138641ilg.5;
 Fri, 20 Mar 2020 04:40:05 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0IfgYaBWPfKbHSdhz+rS5C0hK2QKexw25kwt0gaLhn74/sE9We
 nPLalwHQCuuAu2IXLkISwVi2HUio0xpMtE1uUKk=
X-Google-Smtp-Source: ADFU+vuX46aMx1NbY1leqNBC7N7arF+J98DWHRgaTnF95AlB1R3flMuvkmnEcc2Li7GUFMMjhUk/R1ctAydOwUTuUh8=
X-Received: by 2002:a92:1a53:: with SMTP id z19mr7767334ill.85.1584704405029; 
 Fri, 20 Mar 2020 04:40:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200320071143.4225-1-erin.lo@mediatek.com>
In-Reply-To: <20200320071143.4225-1-erin.lo@mediatek.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 20 Mar 2020 07:39:54 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5pjvbJvMeKEARCAyztNAspqksfmCnV+ubO4OJnaQo5EA@mail.gmail.com>
Message-ID: <CA+5PVA5pjvbJvMeKEARCAyztNAspqksfmCnV+ubO4OJnaQo5EA@mail.gmail.com>
Subject: Re: pull request v2: linux-firmware: Create Mediatek MT8183 SCP
 firmware
To: Erin Lo <erin.lo@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_044006_475619_0986FB59 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: menghui.lin@mediatek.com, Maoguang Meng <maoguang.meng@mediatek.com>,
 srv_heupstream@mediatek.com, Nicolas Boichat <drinkcat@google.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>, linux-remoteproc@vger.kernel.org,
 Linux Firmware <linux-firmware@kernel.org>, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, Shawn Ku <shawnku@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 3:13 AM Erin Lo <erin.lo@mediatek.com> wrote:
>
> Hi, maintainers,
> Changes since v1:
>  - Add information to WHENCE
>
> The following changes since commit 0148cfefcbf98898ca65bb26d9d7d638b30e211d:
>
>   Merge https://github.com/rjliao-qca/qca-btfw (2020-03-02 08:08:15 -0500)
>
> are available in the Git repository at:
>
>   https://github.com/erinlo/linux_fw_scp v12573.77
>
> for you to fetch changes up to 3c213aa59661c4641f0c2166a315140ac0445230:
>
>   mediatek: Add mt8183 SCP firmware (2020-03-20 14:37:49 +0800)
>
> ----------------------------------------------------------------
> Erin Lo (1):
>       mediatek: Add mt8183 SCP firmware
>
>  WHENCE                  |  18 ++++++++++++++++++
>  mediatek/mt8183/scp.img | Bin 0 -> 1027104 bytes
>  2 files changed, 18 insertions(+)
>  create mode 100644 mediatek/mt8183/scp.img

Pulled and pushed out.

josh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
