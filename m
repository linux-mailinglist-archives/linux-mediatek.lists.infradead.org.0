Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317C312D9D3
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Dec 2019 16:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aujkqdtFH6m4xJ713KFgydTDVedLGGwSLRWQpbV+SlM=; b=aGD3A54iohnrWM
	QX00PQ10rj2wq1EdiVbJ0Y3wnNfQ+uW2qOJ0aOcRt/zBlmVi6HSh6OpMZsIcFOz1cH2q/t9vKgTDo
	xBx2PXzyd6Icb04yZtyL0Si+aQz64XG/iYMBAi7djDQCteAGINMEZNf2On/w/FuFluG6x6kkQk1dI
	81mqPcgGWvmJUcW3nesM7jO7fTvv4IbjW7KqrVSoVOHuKeSo1+0LXCWkejRBVNXsibKaWH5B0XtQD
	VDxLIc6Nudvk0IivM5Vf+cIU0OCNTsSsVv4ZI54n/WYHiwSORrsDxo0a840ieVVPfpBriT9fOTETB
	r6PQrWuU3+8yTTYifoyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imJVn-0005aO-Mm; Tue, 31 Dec 2019 15:32:47 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imJVc-0005Sk-OZ; Tue, 31 Dec 2019 15:32:38 +0000
Received: by mail-ed1-x544.google.com with SMTP id v28so35434452edw.12;
 Tue, 31 Dec 2019 07:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q46sgyzFCoqZCnDvkjuU+q1N3qAm1ojvKT53GL9XfFI=;
 b=SoKkx8lK10byoSOJpNl6uxfWB0HCqCbEDA9WDSUAIPDUly7zMzwsXjtIEwtX/NQsCK
 gwsPrha6BEhiaEHw9jJhuUdkaploQVhAy2ln5ukw12SKqh/hOV6c8BNpzDbWMzI/9C57
 /6V8tgzMmn8dJgRwUc/rzm4bOBA39qrDTi/FWW2UrdLTUSrvPrCeFuyx7doV2ZCeitwz
 5f1B5ynkAz/M2pBJb3kjL36uhtXjFDmrGrpuEdu7hTfoMX1S8wYpSDsYdsE/Hp8uHLWH
 8rNBYs7V074V++WTh89g/4y4wHW7RQX7AqeqeJvI6TBM7fMu2rB1eAA2w9fIwFdAeZnw
 gx5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q46sgyzFCoqZCnDvkjuU+q1N3qAm1ojvKT53GL9XfFI=;
 b=g2fOeyWvT29xBEvwO96Rj472Rd3VPbCVj1GiIKlbQMbXY+BEcPX+Zx/sdz17TiVPCx
 YQyAwHbj2UHPka6TzhfrLegrUr78ZHdaxaT9SUL/5rRcTrIjmDBX2uhFlb8WOKrWjFhs
 xBi4ABNdq0S09NvfLPZ/5tXZRc8IKhIymwDDYjjhHX9vE7luh8PGdrXCoHvpAUCpG0gr
 EvTWwlaPdhAvCYODHNdE1/KoWLbMRmFBFUEkMWn+JykP5JXyLguQ13Q4KIcDvgpjxNI5
 QRAaVCAXoJi423iquxfs61ws1SV6u/e8pybzPI7eLWuz8XvQ65JQOvC3v/mvUazGbhl9
 7TAg==
X-Gm-Message-State: APjAAAWcHMNzkkaSdY644nskXBRBq4Wj+QBx2i79t7kMlWOEWK6xqtcT
 fgLJk65BJjtPgFgpIpPNXKYfvyLpTK2QHa102ME=
X-Google-Smtp-Source: APXvYqzQloGOdbtCaSjT2mVsGVV5HxAwcWBjMQNtw4CkqOonMP0cX7iFD+FAOQl9Yi3PaCr71gLtv6WZ7zehEa70JJ8=
X-Received: by 2002:a17:906:19d0:: with SMTP id
 h16mr69858873ejd.70.1577806354952; 
 Tue, 31 Dec 2019 07:32:34 -0800 (PST)
MIME-Version: 1.0
References: <20191230143028.27313-1-alobakin@dlink.ru>
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 31 Dec 2019 17:32:24 +0200
Message-ID: <CA+h21hq95SmS3BraUQeEytP+3Y7irmShBEwpXqqJv+xOp4ePrg@mail.gmail.com>
Subject: Re: [PATCH RFC net-next 00/20] net: dsa: add GRO support
To: Alexander Lobakin <alobakin@dlink.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_073236_800265_4106F7C9 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Edward Cree <ecree@solarflare.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@mellanox.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Alexander,

On Mon, 30 Dec 2019 at 16:31, Alexander Lobakin <alobakin@dlink.ru> wrote:
>
> I mark this as RFC, and there are the key questions for maintainers,
> developers, users etc.:
> - Do we need GRO support for DSA at all?
> - Which tagger protocols really need it and which don't?
> - Does this series bring any performance improvements on the
>   affected systems?

If these are these questions for maintainers, developers, users etc,
then what has determined you to make these changes?

Thanks,
-Vladimir

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
