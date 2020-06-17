Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EECB91FC6D4
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jun 2020 09:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFzvlk/vEvVdWUQKKpNyVXaZKihgsJcvRVbKF3c7DbE=; b=QomntzJj8vhSGM
	tPidKti11+UQe/voWsUl2AGAUExyYel3cH9mCEK4+KP/PzNEo+i/V6zru0VZemphcdzSXVN+dGMkf
	g3+PsFvp/h5yVTnA0WzBvc6wGTm4KKJyCCU4J9wirRc1FeOlGpMxTsjk3iCn88pVLfA9XPeiJ1mY1
	69iGHV9d1aIZvA2gL1GDG/2yC2TcWdk8DrEpaNDH8o7ojYZR2a0T3zctf8f9i2q2bqvioUYQVg0Kn
	xj70p8pCxgPq6Y5Yv45DgYVe9q/BYmnSOE37cusdSRI6LY3OfBe4ujMB8AfvJZeite9dCIKOZxcqQ
	DA7A1/zoUbdHlBkSNWbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlSFA-0007gl-7o; Wed, 17 Jun 2020 07:12:20 +0000
Received: from mail-ej1-f68.google.com ([209.85.218.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlSF6-0007eD-A6; Wed, 17 Jun 2020 07:12:17 +0000
Received: by mail-ej1-f68.google.com with SMTP id k11so1132267ejr.9;
 Wed, 17 Jun 2020 00:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E5EcWVbc+7tsS+GAmjqiwsU8zuC9ZQ4KDsXaJSfWulo=;
 b=ar5UyNMHXi0y3gOT26kjJmDb8baqhjlMwUi4OJHxJSImQHG86YPz4hzsew+O3VCWfE
 ZHh8az2Xy4/vtI40hNN8X2YFeZBHZdvurCTV41hw3xME9BhTacoZfmSb8qVja0n9brcU
 lsLKrFMQXc2aHgNXYIHoGPvj34zxR2qg2EKZKAzeTYNAcGWP0RsIMdBeNqhx8P4rcNjd
 8xp8fLKwiCmkALBG3pypNGN3v/NltkYD0i8mSadLmehqlMYY2hMQZJe//oabsPCl+BRU
 snAsjKDY+LxCjmMXjGmbwe8sw8xjTo+3aMUpCsx65THdExRmV8DhldwINAIlJXmgKTls
 6mEA==
X-Gm-Message-State: AOAM530Kf9MIs2v/0oc+sTMll+XVbdVbD2bZVojHCwEOCE0qMfuc0w6C
 II7vLu9DqF5thnGzToScv0g=
X-Google-Smtp-Source: ABdhPJzxXEZ/32Vk1uutSgWgDm/2Kml+FRFv6q/oUOzaHXvM3d9a7wcEm5DrSyb0iZ8v3ZPtZ+pKKg==
X-Received: by 2002:a17:906:2581:: with SMTP id
 m1mr6681797ejb.89.1592377934427; 
 Wed, 17 Jun 2020 00:12:14 -0700 (PDT)
Received: from localhost (ip-37-188-158-19.eurotel.cz. [37.188.158.19])
 by smtp.gmail.com with ESMTPSA id g22sm12516138ejo.1.2020.06.17.00.12.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 00:12:13 -0700 (PDT)
Date: Wed, 17 Jun 2020 09:12:12 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v4 0/3] mm, treewide: Rename kzfree() to kfree_sensitive()
Message-ID: <20200617071212.GJ9499@dhcp22.suse.cz>
References: <20200616015718.7812-1-longman@redhat.com>
 <fe3b9a437be4aeab3bac68f04193cb6daaa5bee4.camel@perches.com>
 <20200616230130.GJ27795@twin.jikos.cz>
 <20200617003711.GD8681@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617003711.GD8681@bombadil.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_001216_348035_C56E4986 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>, linux-btrfs@vger.kernel.org,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, dsterba@suse.cz,
 David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 linux-sctp@vger.kernel.org, keyrings@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-scsi@vger.kernel.org,
 James Morris <jmorris@namei.org>, kasan-dev@googlegroups.com,
 linux-wpan@vger.kernel.org, David Rientjes <rientjes@google.com>,
 Waiman Long <longman@redhat.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 "Serge E. Hallyn" <serge@hallyn.com>, linux-pm@vger.kernel.org,
 ecryptfs@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-integrity@vger.kernel.org,
 linux-nfs@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-security-module@vger.kernel.org,
 target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, netdev@vger.kernel.org,
 wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue 16-06-20 17:37:11, Matthew Wilcox wrote:
> On Wed, Jun 17, 2020 at 01:01:30AM +0200, David Sterba wrote:
> > On Tue, Jun 16, 2020 at 11:53:50AM -0700, Joe Perches wrote:
> > > On Mon, 2020-06-15 at 21:57 -0400, Waiman Long wrote:
> > > >  v4:
> > > >   - Break out the memzero_explicit() change as suggested by Dan Carpenter
> > > >     so that it can be backported to stable.
> > > >   - Drop the "crypto: Remove unnecessary memzero_explicit()" patch for
> > > >     now as there can be a bit more discussion on what is best. It will be
> > > >     introduced as a separate patch later on after this one is merged.
> > > 
> > > To this larger audience and last week without reply:
> > > https://lore.kernel.org/lkml/573b3fbd5927c643920e1364230c296b23e7584d.camel@perches.com/
> > > 
> > > Are there _any_ fastpath uses of kfree or vfree?
> > 
> > I'd consider kfree performance critical for cases where it is called
> > under locks. If possible the kfree is moved outside of the critical
> > section, but we have rbtrees or lists that get deleted under locks and
> > restructuring the code to do eg. splice and free it outside of the lock
> > is not always possible.
> 
> Not just performance critical, but correctness critical.  Since kvfree()
> may allocate from the vmalloc allocator, I really think that kvfree()
> should assert that it's !in_atomic().  Otherwise we can get into trouble
> if we end up calling vfree() and have to take the mutex.

FWIW __vfree already checks for atomic context and put the work into a
deferred context. So this should be safe. It should be used as a last
resort, though.

-- 
Michal Hocko
SUSE Labs

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
